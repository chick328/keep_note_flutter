part of 'edit_bloc.dart';

@freezed
sealed class EditEvent with _$EditEvent  {
  const factory EditEvent.fetchNoteById(int id) = _FetchNoteById;
  const factory EditEvent.onTitleChanged(String title) = _OnTitleChanged;
  const factory EditEvent.onContentChanged(String content) = _OnContentChanged;
  const factory EditEvent.saveNote() = _SaveNote;
}
