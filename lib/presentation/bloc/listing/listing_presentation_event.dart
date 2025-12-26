part of 'listing_bloc.dart';

@freezed
sealed class ListingPresentationEvent with _$ListingPresentationEvent {
  const factory ListingPresentationEvent.deleteNoteSuccess() = DeleteNoteSuccess;
  const factory ListingPresentationEvent.deleteNoteFailure() = DeleteNoteFailure;
  const factory ListingPresentationEvent.onSearchResultUpdated() = OnSearchResultUpdated;
}