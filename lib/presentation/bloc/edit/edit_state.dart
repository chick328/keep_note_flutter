part of 'edit_bloc.dart';

@freezed
class EditState with _$EditState {
  EditState({
    this.note = const Note()
});

  @override
  final Note note;
}
