import 'package:bloc_presentation/bloc_presentation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:keep_note/presentation/bloc/listing/listing_bloc.dart';
import 'package:keep_note/presentation/ui/listing/widget/listing_preview_card.dart';
import 'package:keep_note/routing/routes.dart';

import '../../../domain/note/model/note.dart';
import '../common/gesture/dismiss_keyboard.dart';
import '../common/paging/app_paging_view.dart';

class ListingScreen extends StatelessWidget {
  const ListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          GetIt.instance<ListingBloc>()
            ..add(ListingEvent.fetchNotesPagingNext()),
      child: _ListingLayout(),
    );
  }
}

class _ListingLayout extends StatelessWidget {
  const _ListingLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final windowWidth = MediaQuery.sizeOf(context).width;

    return BlocPresentationListener<ListingBloc, ListingPresentationEvent>(
      listener: (context, event) {
        switch (event) {
          case CreateNoteSuccess():
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(SnackBar(content: Text('Create Success')));
          case CreateNoteFailure():
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(SnackBar(content: Text('Create Failure')));
          case DeleteNoteSuccess():
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(SnackBar(content: Text('Delete Success')));
          case DeleteNoteFailure():
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(SnackBar(content: Text('Delete Failure')));
        }
      },
      child: BlocBuilder<ListingBloc, ListingState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.white,
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                _navigateAndRefresh(context, null);
                // final datetime = DateTime.now();
                // context.read<NoteBloc>().add(
                //   NoteEvent.createNote(
                //     "title ${datetime}",
                //     "content ${datetime}",
                //   ),
                // );
              },
              tooltip: 'Create New Note',
              child: const Icon(Icons.add),
            ),
            body: DismissKeyboard(
              child: SafeArea(
                bottom: false,
                child: state.notePagingState != null
                    ? CustomScrollView(
                        slivers: [
                          // SliverToBoxAdapter(
                          //   child: TextButton(
                          //     onPressed: () async {
                          //       print("------------click------------");
                          //     },
                          //     child: Text("click"),
                          //   ),
                          // ),
                          // SliverAppBar(
                          //   floating: true,     // Snaps into view when scrolling up
                          //   pinned: true,       // Keeps it visible when scrolled down
                          //   snap: true,         // Optional: quick snap effect (requires floating: true)
                          //   elevation: 4,
                          //   backgroundColor: Theme.of(context).colorScheme.surface,
                          //   title: TextField(
                          //     // controller: _searchController,
                          //     decoration: InputDecoration(
                          //       hintText: 'Search...',
                          //       prefixIcon: const Icon(Icons.search),
                          //       suffixIcon: IconButton(
                          //         icon: const Icon(Icons.clear),
                          //         onPressed: () => {},
                          //       ),
                          //       filled: true,
                          //       fillColor: Colors.white,
                          //       border: OutlineInputBorder(
                          //         borderRadius: BorderRadius.circular(8),
                          //       ),
                          //     ),
                          //     onChanged: (value) {
                          //       // Handle search logic here (e.g., filter a list)
                          //     },
                          //   ),
                          // ),
                          CupertinoSliverRefreshControl(
                            onRefresh: () async {
                              context.read<ListingBloc>().add(
                                ListingEvent.refresh(),
                              );
                            },
                          ),
                          SliverSafeArea(
                            bottom: true,
                            minimum: EdgeInsets.zero,
                            sliver: SliverPadding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                              ),
                              sliver: AppPagingSliverMasonryGrid<Note>(
                                state: state.notePagingState!,
                                mainAxisSpacing: 10,
                                crossAxisSpacing: 10,
                                maxCrossAxisExtent: windowWidth / 2,
                                onFetchNextPage: () {
                                  context.read<ListingBloc>().add(
                                    ListingEvent.fetchNotesPagingNext(),
                                  );
                                },
                                onRetry: () {
                                  context.read<ListingBloc>().add(
                                    ListingEvent.fetchNotesPagingNext(),
                                  );
                                },
                                itemContent: (context, item, index) =>
                                    ListingPreviewCard(
                                      key: ValueKey(item.id),
                                      title: item.title,
                                      content: item.content,
                                      onCardLongPress: () =>
                                          _deleteNoteDialogBuilder(
                                            context,
                                            item,
                                          ),
                                      onCardClick: () =>
                                          _navigateAndRefresh(context, item.id),
                                    ),
                              ),
                              // sliver: AppPagingSliverGrid<Note>(
                              //   state: state.notePagingState!,
                              //   gridDelegate:
                              //       SliverGridDelegateWithMaxCrossAxisExtent(
                              //         maxCrossAxisExtent: windowWidth / 2,
                              //         mainAxisSpacing: 10.0,
                              //         crossAxisSpacing: 10.0,
                              //         childAspectRatio: 1.0,
                              //       ),
                              //   onFetchNextPage: () {
                              //     context.read<NoteBloc>().add(
                              //       NoteEvent.fetchNotesPagingNext(),
                              //     );
                              //   },
                              //   onRetry: () {
                              //     context.read<NoteBloc>().add(
                              //       NoteEvent.fetchNotesPagingNext(),
                              //     );
                              //   },
                              //   itemContent: (context, item, index) =>
                              //       NotePreviewCard(
                              //         key: ValueKey(item.id),
                              //         title: item.title,
                              //         content: item.content,
                              //         onCardClick: () =>
                              //             _deleteNoteDialogBuilder(
                              //               context,
                              //               item,
                              //             ),
                              //       ),
                              // ),
                            ),
                          ),
                        ],
                      )
                    : Text("something wrong"),
              ),
            ),
          );
        },
      ),
    );
  }

  Future<void> _deleteNoteDialogBuilder(
    BuildContext mainContext,
    Note selectedNote,
  ) {
    return showDialog<void>(
      context: mainContext,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Delete Note'),
          content: const Text('Are you sure?'),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('No'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Delete'),
              onPressed: () {
                mainContext.read<ListingBloc>().add(
                  ListingEvent.deleteNote(selectedNote),
                );
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> _navigateAndRefresh(BuildContext context, int? id) async {
    // Navigator.push returns a Future that completes after calling
    // Navigator.pop on the Selection Screen.
    if (id != null) {
      await context.push(Routes.noteEditWithId(id));
    } else {
      await context.push(Routes.noteEdit);
    }

    // When a BuildContext is used from a StatefulWidget, the mounted property
    // must be checked after an asynchronous gap.
    if (!context.mounted) return;

    context.read<ListingBloc>().add(ListingEvent.refresh());
  }
}
