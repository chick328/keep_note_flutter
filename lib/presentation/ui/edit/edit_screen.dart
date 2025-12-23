import 'dart:io';

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

  final int? id;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) {
        final bloc = GetIt.instance<EditBloc>();
        if (id != null) {
          bloc.add(EditEvent.fetchNoteById(id!));
        }
        return bloc;
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
    return DismissKeyboard(
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
                  onPressed: () {},
                  icon: Icon(Icons.notifications_active),
                ),
                IconButton(
                  onPressed: () {
                    _scheduleNotificationDialogBuilder(
                        context,
                      initialDateTime: state.note.scheduledNotificationDateTime,
                      onConfirm: (dateTime) {
                        context.read<EditBloc>().add(EditEvent.scheduleNotification(dateTime));
                      }
                    );
                  },
                  icon: Icon(Icons.notifications_outlined),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
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
                            backgroundColor: Colors.grey.withValues(alpha: 0.4),
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
                            backgroundColor: Colors.grey.withValues(alpha: 0.4),
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
    );
  }

  Future<void> _scheduleNotificationDialogBuilder(
    BuildContext parentContext, {
    DateTime? initialDateTime,
    Function(DateTime dateTime)? onConfirm,
  }) {
    final currentDateTime = DateTime.now();
    DateTime selectedDateTime = currentDateTime.add(const Duration(hours: 1));

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
                    child:Text(
                      "Schedule Notification",
                      style: Theme.of(context).textTheme.headlineMedium,
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Flexible(
                    child: CupertinoDatePicker(
                      mode: CupertinoDatePickerMode.dateAndTime,
                      initialDateTime:
                          initialDateTime ??
                          currentDateTime.add(const Duration(hours: 1)),
                      minimumDate: currentDateTime,
                      maximumDate: currentDateTime.add(
                        const Duration(days: 365),
                      ),
                      use24hFormat: true,
                      onDateTimeChanged: (DateTime newDateTime) {
                        // Handle the new date/time here
                        print("$newDateTime");
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
