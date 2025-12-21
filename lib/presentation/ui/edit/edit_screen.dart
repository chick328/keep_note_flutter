import 'dart:io';
import 'dart:math';

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
                  Navigator.of(context).pop();
                },
              ),
              actions: [IconButton(onPressed: () {}, icon: Icon(Icons.delete))],
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
                    style: Theme
                        .of(context)
                        .textTheme
                        .headlineLarge,
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
                      style: Theme
                          .of(context)
                          .textTheme
                          .bodyMedium,
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
                if (state.pickedImages.isNotEmpty) ...[
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
                              for (var image in state.pickedImages)
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(16.0),
                                  child: Image.file(
                                    image,
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
}
