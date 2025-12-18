import 'package:keep_note/data/common/app_database.dart';
import 'package:keep_note/domain/note/model/note.dart';
import 'package:keep_note/domain/note/note_repository.dart';
import 'package:keep_note/domain/util/result.dart';

class NoteRepositoryImpl extends NoteRepository {
  NoteRepositoryImpl({required AppDatabase database}) : _database = database;

  final AppDatabase _database;

  @override
  Future<Result<void>> createNote(Note note) async {
    try {
      if (!_database.isOpen()) {
        await _database.open();
      }

      await _database.noteDao?.insert(note.title, note.content);
      return Result.success(null);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  @override
  Future<Result<void>> deleteNote(Note note) async {
    try {
      if (!_database.isOpen()) {
        await _database.open();
      }

      await _database.noteDao?.deleteById(note.id!);
      return Result.success(null);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  @override
  Future<Result<List<Note>>> getAllNotes() async {
    try {
      if (!_database.isOpen()) {
        await _database.open();
      }

      var result = await _database.noteDao?.fetchAll();
      return Result.success(
        result?.map((e) => e.toNote()).toList() ?? List.empty(),
      );
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  @override
  Future<Result<List<Note>>> getNotesPaginated(int pageSize, int page) async {
    try {
      if (!_database.isOpen()) {
        await _database.open();
      }
      // await Future.delayed(Duration(seconds: 2));
      var result = await _database.noteDao?.fetchPaginated(pageSize, (page - 1) * pageSize);
      return Result.success(
        result?.map((e) => e.toNote()).toList() ?? List.empty(),
      );
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  @override
  Future<Result<Note>> getNoteById(int id) async {
    try {
      if (!_database.isOpen()) {
        await _database.open();
      }

      var result = await _database.noteDao?.fetchById(id);
      return Result.success(result!.toNote());
    } on Exception catch (e) {
      return Result.error(e);
    }
  }
}
