part of 'edit_bloc.dart';

@freezed
class EditState with _$EditState {
  EditState({Note? note, this.pickedImages = const []}) : note = note ?? Note();

  @override
  final Note note;

  @override
  final List<File> pickedImages;
}
