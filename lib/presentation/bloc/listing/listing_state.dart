part of 'listing_bloc.dart';

@freezed
class ListingState with _$ListingState {
  ListingState({
    this.searchResult = const [],
    this.searchKeyword = "",
    this.displayMode = DisplayMode.MasonryGrid,
    this.isSearchFailure = false,
    this.isDeleteNoteSuccess = false,
    this.isDeleteNoteFailure = false,
    AppPagingState<Note>? notePagingState,
  }) : notePagingState = (notePagingState ?? AppPagingState<Note>().copyWith());

  @override
  final List<Note> searchResult;

  @override
  final String searchKeyword;

  @override
  final DisplayMode displayMode;

  @override
  AppPagingState<Note> notePagingState;

  @override
  final bool isSearchFailure;

  @override
  final bool isDeleteNoteSuccess;

  @override
  final bool isDeleteNoteFailure;
}
