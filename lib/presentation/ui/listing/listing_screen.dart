import 'package:bloc_presentation/bloc_presentation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:keep_note/domain/note/model/display_mode.dart';
import 'package:keep_note/presentation/bloc/listing/listing_bloc.dart';
import 'package:keep_note/presentation/ui/common/app_sliver_persistent_header.dart';
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
      create: (_) => GetIt.instance<ListingBloc>()
        ..add(ListingEvent.fetchNotesPagingNext())
        ..add(ListingEvent.getDisplayMode()),
      child: _ListingLayout(),
    );
  }
}

class _ListingLayout extends StatelessWidget {
  const _ListingLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final windowWidth = MediaQuery.sizeOf(context).width;
    final windowHeight = MediaQuery.sizeOf(context).height;

    return BlocPresentationListener<ListingBloc, ListingPresentationEvent>(
      listener: (context, event) {
        switch (event) {
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
                          SliverPersistentHeader(
                            pinned: true,
                            delegate: AppSliverPersistentHeader(
                              height: 72.0,
                              widget: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16.0,
                                  vertical: 8.0,
                                ),
                                child: Row(
                                  children: [
                                    Flexible(
                                      child: SearchAnchor(
                                        textInputAction: TextInputAction.search,
                                        viewOnSubmitted: (v) {
                                          if (v.trim().isEmpty) return;
                                          context.read<ListingBloc>().add(
                                            ListingEvent.searchNotes(v),
                                          );
                                        },
                                        builder:
                                            (
                                              BuildContext context,
                                              SearchController controller,
                                            ) {
                                              return InkWell(
                                                child: Container(
                                                  padding: const EdgeInsets.all(
                                                    16.0,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .surfaceContainerHigh,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          40,
                                                        ),
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      Icon(Icons.search),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsGeometry.symmetric(
                                                              horizontal: 8.0,
                                                            ),
                                                        child: Text("Search"),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              );
                                            },
                                        suggestionsBuilder:
                                            (
                                              BuildContext context,
                                              SearchController controller,
                                            ) {
                                              return [];
                                            },
                                      ),
                                    ),
                                    PopupMenuButton<DisplayMode>(
                                      initialValue: state.displayMode,
                                      onSelected: (DisplayMode mode) {
                                        context.read<ListingBloc>().add(
                                          ListingEvent.onDisplayModeSelected(
                                            mode,
                                          ),
                                        );
                                      },
                                      icon: switch (state.displayMode) {
                                        DisplayMode.MasonryGrid => Icon(
                                          Icons.grid_view,
                                        ),
                                        DisplayMode.List => Icon(
                                          Icons.view_agenda_outlined,
                                        ),
                                      },
                                      itemBuilder: (BuildContext context) {
                                        return DisplayMode.values.map((mode) {
                                          return switch (mode) {
                                            DisplayMode.MasonryGrid =>
                                              PopupMenuItem<DisplayMode>(
                                                value: DisplayMode.MasonryGrid,
                                                child: Row(
                                                  children: [
                                                    Icon(Icons.grid_view),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsGeometry.symmetric(
                                                            horizontal: 4.0,
                                                          ),
                                                      child: Text('Grid'),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            DisplayMode.List =>
                                              PopupMenuItem<DisplayMode>(
                                                value: DisplayMode.List,
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons
                                                          .view_agenda_outlined,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsGeometry.symmetric(
                                                            horizontal: 4.0,
                                                          ),
                                                      child: Text('List'),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                          };
                                        }).toList();
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
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
                              sliver: switch (state.displayMode) {
                                DisplayMode.MasonryGrid =>
                                  AppPagingSliverMasonryGrid<Note>(
                                    state: state.notePagingState!,
                                    mainAxisSpacing: 4,
                                    crossAxisSpacing: 4,
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
                                        GridPreviewCard(
                                            key: ValueKey(item.id),
                                            title: item.title,
                                            content: item.content,
                                            images: item.imagePaths,
                                            onCardLongPress: () =>
                                                _deleteNoteDialogBuilder(
                                                  context,
                                                  item,
                                                ),
                                            onCardClick: () =>
                                                _navigateAndRefresh(
                                                  context,
                                                  item.id,
                                                ),
                                          ),
                                  ),
                                DisplayMode.List => AppPagingSliverList<Note>(
                                  state: state.notePagingState!,
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
                                      ListPreviewCard(
                                        key: ValueKey(item.id),
                                        title: item.title,
                                        content: item.content,
                                        images: item.imagePaths,
                                        onCardLongPress: () =>
                                            _deleteNoteDialogBuilder(
                                              context,
                                              item,
                                            ),
                                        onCardClick: () => _navigateAndRefresh(
                                          context,
                                          item.id,
                                        ),
                                      ),
                                ),
                              },
                            ),
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          Text("something went wrong"),
                          TextButton(
                            onPressed: () {
                              context.read<ListingBloc>().add(
                                ListingEvent.refresh(),
                              );
                            },
                            child: Text("Retry"),
                          ),
                        ],
                      ),
              ),
            ),
          );
        },
      ),
    );
  }

  Future<void> _deleteNoteDialogBuilder(
    BuildContext parentContext,
    Note selectedNote,
  ) {
    return showDialog<void>(
      context: parentContext,
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
                parentContext.read<ListingBloc>().add(
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
