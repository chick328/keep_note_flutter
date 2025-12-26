part of 'edit_bloc.dart';

@freezed
sealed class EditPresentationEvent with _$EditPresentationEvent {
  const factory EditPresentationEvent.deleteNoteSuccess() = DeleteNoteSuccess;
  const factory EditPresentationEvent.deleteNoteFailure() = DeleteNoteFailure;
  const factory EditPresentationEvent.scheduleNotiSuccess() = ScheduleNotiSuccess;
  const factory EditPresentationEvent.cancelScheduledNotiSuccess() = CancelScheduledNotiSuccess;
}