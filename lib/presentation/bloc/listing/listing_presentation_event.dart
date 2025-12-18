part of 'listing_bloc.dart';

@freezed
sealed class ListingPresentationEvent with _$ListingPresentationEvent {
  const factory ListingPresentationEvent.createNoteSuccess() = CreateNoteSuccess;
  const factory ListingPresentationEvent.createNoteFailure() = CreateNoteFailure;
  const factory ListingPresentationEvent.deleteNoteSuccess() = DeleteNoteSuccess;
  const factory ListingPresentationEvent.deleteNoteFailure() = DeleteNoteFailure;
}