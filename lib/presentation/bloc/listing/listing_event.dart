part of 'listing_bloc.dart';

@freezed
sealed class ListingEvent with _$ListingEvent {
  const factory ListingEvent.searchNotes(String keyword) = _SearchNotes;
  const factory ListingEvent.fetchNotesPagingNext() = _FetchNotesPagingNext;
  const factory ListingEvent.refresh() = _Refresh;
  const factory ListingEvent.deleteNote(Note note) = _DeleteNote;
  const factory ListingEvent.onDisplayModeSelected(DisplayMode mode) = _OnDisplayModeSelected;
  const factory ListingEvent.getDisplayMode() = _GetDisplayMode;
}