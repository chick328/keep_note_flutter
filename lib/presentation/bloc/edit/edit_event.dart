part of 'edit_bloc.dart';

@freezed
sealed class EditEvent with _$EditEvent  {
  const factory EditEvent.fetchNoteById(String? id) = _FetchNoteById;
  const factory EditEvent.onTitleChanged(String title) = _OnTitleChanged;
  const factory EditEvent.onContentChanged(String content) = _OnContentChanged;
  const factory EditEvent.saveNote() = _SaveNote;
  const factory EditEvent.pickImages(List<File> images) = _PickImages;
  const factory EditEvent.scheduleNotification(DateTime dateTime) = _ScheduleNotification;
  const factory EditEvent.cancelScheduledNotification() = _CancelScheduleNotification;
  const factory EditEvent.deleteNote() = _DeleteNote;
}
