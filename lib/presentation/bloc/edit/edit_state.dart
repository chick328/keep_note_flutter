part of 'edit_bloc.dart';

@freezed
class EditState with _$EditState {
  EditState({this.note = const Note(), this.pickedImages = const []});

  @override
  final Note note;

  @override
  final List<File> pickedImages;
}
