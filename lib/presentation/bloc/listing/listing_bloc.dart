import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_presentation/bloc_presentation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:keep_note/domain/note/model/note.dart';
import 'package:keep_note/domain/note/note_repository.dart';
import 'package:keep_note/domain/util/result.dart';

import '../../ui/common/paging/app_paging_state.dart';

part 'listing_event.dart';

part 'listing_presentation_event.dart';

part 'listing_state.dart';

part 'listing_bloc.freezed.dart';

class ListingBloc extends Bloc<ListingEvent, ListingState>
    with BlocPresentationMixin<ListingState, ListingPresentationEvent> {
  ListingBloc({required NoteRepository noteRepository})
    : _noteRepository = noteRepository,
      super(ListingState()) {
    on<ListingEvent>((event, emit) async {
      await event.map(
        fetchAllNotes: (_) async {
          await getAllNotes(emit);
        },
        refresh: (_) async {
          await refreshNotesPaginated(emit);
        },
        createNote: (event) async {
          final result = await _noteRepository.createNote(
            Note(title: event.title, content: event.content),
          );
          switch (result) {
            case Success<void>():
              emitPresentation(ListingPresentationEvent.createNoteSuccess());
            await refreshNotesPaginated(emit);
            case Error():
              emitPresentation(ListingPresentationEvent.createNoteFailure());
          }
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
          // final result = await _noteRepository.getNotesPaginated(
          //   20,
          //   event.page,
          // );
          // switch (result) {
          //   case Success<List<Note>>():
          //     emit(
          //       state.copyWith(
          //         notes: [...state.notes, ...result.value],
          //         isGetAllNotesFailure: false,
          //       ),
          //     );
          //   case Error():
          // }
        },
      );
    });
  }

  final NoteRepository _noteRepository;

  Future<void> getAllNotes(Emitter<ListingState> emit) async {
    final result = await _noteRepository.getAllNotes();
    switch (result) {
      case Success<List<Note>>():
        emit(state.copyWith(notes: result.value, isGetAllNotesFailure: false));
      case Error():
        emit(state.copyWith(notes: List.empty(), isGetAllNotesFailure: true));
    }
  }

  Future<void> fetchNotesPaginated(Emitter<ListingState> emit) async {
    final currentPagingState = state.notePagingState;
    if (currentPagingState == null ||
        currentPagingState.isLoading ||
        !currentPagingState.hasNextPage) {
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

    // if (pageKey != 1 && currentPagingState.error ==null) {
    //   return emit(state.copyWith(notePagingState: currentPagingState.copyWith(
    //     isLoading: false,
    //     error: Exception("tstetest"),
    //   ),));
    // }

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
