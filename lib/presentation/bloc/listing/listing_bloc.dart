import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_presentation/bloc_presentation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:keep_note/domain/note/model/note.dart';
import 'package:keep_note/domain/note/note_repository.dart';
import 'package:keep_note/domain/shared_pref_manager.dart';
import 'package:keep_note/domain/util/result.dart';

import '../../../domain/note/model/display_mode.dart';
import '../../ui/common/paging/app_paging_state.dart';

part 'listing_event.dart';

part 'listing_presentation_event.dart';

part 'listing_state.dart';

part 'listing_bloc.freezed.dart';

class ListingBloc extends Bloc<ListingEvent, ListingState>
    with BlocPresentationMixin<ListingState, ListingPresentationEvent> {
  ListingBloc({
    required NoteRepository noteRepository,
    required SharedPrefManager sharedPrefManager,
  }) : _noteRepository = noteRepository,
       _sharedPrefManager = sharedPrefManager,
       super(ListingState()) {
    on<ListingEvent>((event, emit) async {
      await event.map(
        searchNotes: (event) async {
          final result = await _noteRepository.getAllNotes(
            searchKeyword: event.keyword,
          );
          switch (result) {
            case Success<List<Note>>():
              emit(
                state.copyWith(
                  searchResult: result.value,
                  isSearchFailure: false,
                ),
              );
            case Error():
              emit(
                state.copyWith(
                  searchResult: List.empty(),
                  isSearchFailure: true,
                ),
              );
          }
          emitPresentation(ListingPresentationEvent.onSearchResultUpdated());
        },
        refresh: (_) async {
          await refreshNotesPaginated(emit);
        },
        deleteNote: (event) async {
          final result = await _noteRepository.deleteNote(event.note);
          switch (result) {
            case Success<void>():
              emitPresentation(ListingPresentationEvent.deleteNoteSuccess());
              await refreshNotesPaginated(emit);
            case Error():
              emitPresentation(ListingPresentationEvent.deleteNoteFailure());
          }
        },
        fetchNotesPagingNext: (event) async {
          await fetchNotesPaginated(emit);
        },
        onDisplayModeSelected: (event) {
          if (event.mode == state.displayMode) return;
          sharedPrefManager.setListingDisplayMode(event.mode);
          emit(state.copyWith(displayMode: event.mode));
        },
        getDisplayMode: (event) async {
          final result = await _sharedPrefManager.getListingDisplayMode();
          if (result != null) {
            emit(state.copyWith(displayMode: result));
          }
        },
      );
    });
  }

  final NoteRepository _noteRepository;
  final SharedPrefManager _sharedPrefManager;

  Future<void> fetchNotesPaginated(Emitter<ListingState> emit) async {
    final currentPagingState = state.notePagingState;
    if (currentPagingState.isLoading || !currentPagingState.hasNextPage) {
      return;
    }

    final pageKey = currentPagingState.lastPageIsEmpty
        ? null
        : currentPagingState.nextIntPageKey;
    if (pageKey == null) {
      emit(
        state.copyWith(
          notePagingState: currentPagingState.copyWith(hasNextPage: false),
        ),
      );
      return;
    }

    emit(
      state.copyWith(
        notePagingState: currentPagingState.copyWith(
          isLoading: true,
          error: null,
        ),
      ),
    );

    final result = await _noteRepository.getNotesPaginated(20, pageKey);
    final newPagingState = switch (result) {
      Success<List<Note>>() => currentPagingState.copyWith(
        isLoading: false,
        error: null,
        hasNextPage: result.value.isNotEmpty,
        pages: [...?currentPagingState.pages, result.value],
        keys: [...?currentPagingState.keys, pageKey],
      ),
      Error() => currentPagingState.copyWith(
        isLoading: false,
        error: result.error,
      ),
    };

    emit(state.copyWith(notePagingState: newPagingState));
  }

  Future<void> refreshNotesPaginated(Emitter<ListingState> emit) async {
    emit(state.copyWith(notePagingState: AppPagingState<Note>().reset()));
    await fetchNotesPaginated(emit);
  }
}
