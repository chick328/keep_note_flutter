part of 'listing_bloc.dart';

@freezed
class ListingState with _$ListingState {
  ListingState({
    this.notes = const [],
    this.isGetAllNotesFailure = false,
    this.isCreateNoteSuccess = false,
    this.isCreateNoteFailure = false,
    this.isDeleteNoteSuccess = false,
    this.isDeleteNoteFailure = false,
    notePagingState,
  }) : notePagingState = (notePagingState ?? AppPagingState<Note>().copyWith());

  @override
  final List<Note> notes;

  @override
  AppPagingState<Note>? notePagingState;

  @override
  final bool isGetAllNotesFailure;

  @override
  final bool isCreateNoteSuccess;

  @override
  final bool isCreateNoteFailure;

  @override
  final bool isDeleteNoteSuccess;

  @override
  final bool isDeleteNoteFailure;
}
