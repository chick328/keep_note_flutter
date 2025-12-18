import 'package:keep_note/domain/util/result.dart';

import 'model/note.dart';

abstract class NoteRepository {
  Future<Result<List<Note>>> getAllNotes();
  Future<Result<List<Note>>> getNotesPaginated(int pageSize, int page);
  Future<Result<Note>> getNoteById(int id);
  Future<Result<void>> createNote(Note note);
  Future<Result<void>> deleteNote(Note note);

}