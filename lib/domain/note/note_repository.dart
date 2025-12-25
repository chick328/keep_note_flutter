import 'package:keep_note/domain/util/result.dart';

import 'model/note.dart';

abstract class NoteRepository {
  Future<Result<List<Note>>> getAllNotes({String? searchKeyword});
  Future<Result<List<Note>>> getNotesPaginated(int pageSize, int page);
  Future<Result<Note>> getNoteById(String id);
  Future<Result<void>> createNote(Note note);
  Future<Result<void>> deleteNote(Note note);
  Future<Result<void>> insertOrUpdateNote(Note note);

}