part of 'listing_bloc.dart';

@freezed
sealed class ListingEvent with _$ListingEvent {
  const factory ListingEvent.fetchAllNotes() = _FetchAllNotes;
  const factory ListingEvent.fetchNotesPagingNext() = _FetchNotesPagingNext;
  const factory ListingEvent.refresh() = _Refresh;
  const factory ListingEvent.createNote(String title, String content) = _CreateNote;
  const factory ListingEvent.deleteNote(Note note) = _DeleteNote;
}