import 'dart:io';

import 'package:bloc_presentation/bloc_presentation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

import '../../bloc/edit/edit_bloc.dart';
import '../common/gesture/dismiss_keyboard.dart';

class EditScreen extends StatelessWidget {
  const EditScreen({super.key, this.id});

  final String? id;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) {
        return GetIt.instance<EditBloc>()..add(EditEvent.fetchNoteById(id));
      },
      child: _EditLayout(),
    );
  }
}

class _EditLayout extends StatelessWidget {
  _EditLayout({super.key});

  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage(BuildContext context, ImageSource source) async {
    if (context.mounted) {
      final XFile? pickedImage = await _picker.pickImage(source: source);

      if (pickedImage != null) {
        context.read<EditBloc>().add(
          EditEvent.pickImages([File(pickedImage.path)]),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocPresentationListener<EditBloc, EditPresentationEvent>(
      listener: (context, event) {
        switch (event) {
          case DeleteNoteSuccess():
            context.pop();
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(SnackBar(content: Text('Delete Success')));
          case DeleteNoteFailure():
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(SnackBar(content: Text('Delete Failure')));
          case ScheduleNotiSuccess():
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(SnackBar(content: Text('You have scheduled a notification')));
          case CancelScheduledNotiSuccess():
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(SnackBar(content: Text('You have canceled the notification')));
        }
      },
      child: DismissKeyboard(
        child: BlocBuilder<EditBloc, EditState>(
          builder: (context, state) {
            return Scaffold(
              appBar: AppBar(
                leading: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    context.read<EditBloc>().add(EditEvent.saveNote());
                    context.pop();
                  },
                ),
                actions: [
                  IconButton(
                    onPressed: () {
                      _scheduleNotificationDialogBuilder(
                        context,
                        scheduledDateTime:
                            state.note.scheduledNotificationDateTime,
                        onConfirm: (dateTime) {
                          context.read<EditBloc>().add(
                            EditEvent.scheduleNotification(dateTime),
                          );
                        },
                        onCancel: () {
                          context.read<EditBloc>().add(
                            EditEvent.cancelScheduledNotification(),
                          );
                        },
                      );
                    },
                    icon:
                        state.note.scheduledNotificationId != null &&
                            state.note.scheduledNotificationDateTime != null
                        ? Icon(Icons.notifications_active)
                        : Icon(Icons.notifications_outlined),
                  ),
                  IconButton(
                    onPressed: () {
                      context.read<EditBloc>().add(EditEvent.deleteNote());
                    },
                    icon: Icon(Icons.delete),
                  ),
                ],
              ),
              body: Column(
                children: [
                  Padding(
                    padding: EdgeInsetsGeometry.symmetric(horizontal: 16.0),
                    child: TextField(
                      controller: TextEditingController(text: state.note.title)
                        ..selection = TextSelection.collapsed(
                          offset: state.note.title?.length ?? 0,
                        ),
                      autofocus: true,
                      maxLines: null,
                      keyboardType: TextInputType.multiline,
                      style: Theme.of(context).textTheme.headlineLarge,
                      decoration: InputDecoration.collapsed(
                        hintText: "Title",
                        border: InputBorder.none,
                      ),
                      onChanged: (value) {
                        context.read<EditBloc>().add(
                          EditEvent.onTitleChanged(value),
                        );
                      },
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsGeometry.symmetric(
                        vertical: 8.0,
                        horizontal: 16.0,
                      ),
                      child: TextField(
                        controller:
                            TextEditingController(text: state.note.content)
                              ..selection = TextSelection.collapsed(
                                offset: state.note.content?.length ?? 0,
                              ),
                        maxLines: null,
                        style: Theme.of(context).textTheme.bodyMedium,
                        keyboardType: TextInputType.multiline,
                        decoration: InputDecoration.collapsed(
                          hintText: "Content",
                          border: InputBorder.none,
                        ),
                        onChanged: (value) {
                          context.read<EditBloc>().add(
                            EditEvent.onContentChanged(value),
                          );
                        },
                      ),
                    ),
                  ),
                  if ((state.note.imagePaths ?? []).isNotEmpty) ...[
                    Divider(),
                    LayoutBuilder(
                      builder: (context, constraints) {
                        return SingleChildScrollView(
                          padding: const EdgeInsetsGeometry.symmetric(
                            horizontal: 16.0,
                            vertical: 4.0,
                          ),
                          scrollDirection: Axis.horizontal,
                          child: ConstrainedBox(
                            constraints: BoxConstraints(
                              minWidth: constraints.maxWidth,
                            ),
                            child: Row(
                              spacing: 8.0,
                              children: [
                                for (String imagePath
                                    in state.note.imagePaths ?? [])
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(16.0),
                                    child: Image.file(
                                      File(imagePath),
                                      height: 100,
                                      width: 100,
                                      fit: BoxFit.fill,
                                      errorBuilder: (_, _, _) {
                                        return Container(
                                          width: 100,
                                          height: 100,
                                          alignment: Alignment.center,
                                          color: Colors.grey,
                                          child: Icon(Icons.error_outline),
                                        );
                                      },
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsetsGeometry.symmetric(
                        horizontal: 16.0,
                        vertical: 8.0,
                      ),
                      child: Row(
                        spacing: 8.0,
                        children: [
                          IconButton(
                            style: IconButton.styleFrom(
                              backgroundColor: Colors.grey.withValues(
                                alpha: 0.4,
                              ),
                            ),
                            icon: Icon(Icons.photo_camera),
                            onPressed: () {
                              if (state.pickedImages.length <= 5) {
                                _pickImage(context, ImageSource.camera);
                              } else {
                                ScaffoldMessenger.of(context)
                                  ..hideCurrentSnackBar()
                                  ..showSnackBar(
                                    SnackBar(content: Text('Reach Limit')),
                                  );
                              }
                            },
                          ),
                          IconButton(
                            style: IconButton.styleFrom(
                              backgroundColor: Colors.grey.withValues(
                                alpha: 0.4,
                              ),
                            ),
                            icon: Icon(Icons.photo_rounded),
                            onPressed: () {
                              if (state.pickedImages.length < 5) {
                                _pickImage(context, ImageSource.gallery);
                              } else {
                                ScaffoldMessenger.of(context)
                                  ..hideCurrentSnackBar()
                                  ..showSnackBar(
                                    SnackBar(content: Text('Reach Limit')),
                                  );
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Future<void> _scheduleNotificationDialogBuilder(
    BuildContext parentContext, {
    DateTime? scheduledDateTime,
    Function(DateTime dateTime)? onConfirm,
    Function()? onCancel,
  }) {
    final currentDateTime = DateTime.now();
    DateTime initialDateTime;

    if (scheduledDateTime != null) {
      if (scheduledDateTime.isBefore(currentDateTime)) {
        initialDateTime = currentDateTime.add(const Duration(hours: 1));
      } else {
        initialDateTime = scheduledDateTime;
      }
    } else {
      initialDateTime = currentDateTime.add(const Duration(hours: 1));
    }

    DateTime selectedDateTime = initialDateTime;

    return showDialog<void>(
      context: parentContext,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Container(
            height: 350.0,
            width: double.infinity,
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsetsGeometry.all(16.0),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Schedule Notification",
                      style: Theme.of(context).textTheme.headlineMedium,
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Flexible(
                    child: CupertinoDatePicker(
                      mode: CupertinoDatePickerMode.dateAndTime,
                      initialDateTime: initialDateTime,
                      minimumDate: currentDateTime,
                      maximumDate: currentDateTime.add(
                        const Duration(days: 365),
                      ),
                      use24hFormat: true,
                      onDateTimeChanged: (DateTime newDateTime) {
                        selectedDateTime = newDateTime;
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                          textStyle: Theme.of(context).textTheme.labelLarge,
                        ),
                        child: const Text('Cancel'),
                        onPressed: () {
                          onCancel?.call();
                          context.pop();
                        },
                      ),
                      Expanded(child: SizedBox.shrink()),
                      TextButton(
                        style: TextButton.styleFrom(
                          textStyle: Theme.of(context).textTheme.labelLarge,
                        ),
                        child: const Text('Back'),
                        onPressed: () {
                          context.pop();
                        },
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          textStyle: Theme.of(context).textTheme.labelLarge,
                        ),
                        child: const Text('Confirm'),
                        onPressed: () {
                          onConfirm?.call(selectedDateTime);
                          context.pop();
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
