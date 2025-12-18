import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

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
  const _EditLayout({super.key});

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
                  Navigator.of(context).pop();
                },
              ),
              actions: [IconButton(onPressed: () {}, icon: Icon(Icons.delete))],
            ),
            body: Column(
              children: [
                Padding(
                  padding: EdgeInsetsGeometry.symmetric(
                    horizontal: 16.0,
                  ),
                  child: TextField(
                    controller: TextEditingController(text: state.note.title),
                    autofocus: true,
                    maxLines: null,
                    keyboardType: TextInputType.multiline,
                    style: Theme.of(context).textTheme.headlineLarge,
                    decoration: InputDecoration.collapsed(
                      hintText: "Title",
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsGeometry.symmetric(
                      vertical: 8.0,
                      horizontal: 16.0,
                    ),
                    child: TextField(
                      controller: TextEditingController(text: state.note.content),
                      autofocus: true,
                      maxLines: null,
                      style: Theme.of(context).textTheme.bodyMedium,
                      keyboardType: TextInputType.multiline,
                      decoration: InputDecoration.collapsed(
                        hintText: "Content",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.amber,
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(16.0),
                  child: SafeArea(child: Text('Stuck to the bottom')),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
