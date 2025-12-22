import 'dart:convert';

import 'package:sqflite/sqflite.dart';
import 'package:sqflite/utils/utils.dart';

import '../../domain/note/model/note.dart';
import 'model/note_entity.dart';

class NoteDao {
  static const String _noteTableName = 'note';
  static const String _idColumnName = '_id';
  static const String _titleColumnName = 'title';
  static const String _contentColumnName = 'content';
  static const String _imagePathsColumnName = 'image_paths';
  static const String _crateDateColumnName = 'create_date';
  static const String _lastModifyDateColumnName = 'last_modify_date';

  NoteDao({required Database database}) : _database = database;

  final Database _database;

  Future<void> createTable() async {
    _database.execute(
      'CREATE TABLE $_noteTableName($_idColumnName INTEGER PRIMARY KEY AUTOINCREMENT, $_titleColumnName TEXT, $_imagePathsColumnName TEXT, $_contentColumnName TEXT, $_crateDateColumnName INTEGER, $_lastModifyDateColumnName INTEGER)',
    );
  }

  Future<List<NoteEntity>> fetchAll() async {
    final entries = await _database.query(
      _noteTableName,
      orderBy: '$_lastModifyDateColumnName DESC',
    );

    return _mapEntriesToNoteEntities(entries);
  }

  Future<List<NoteEntity>> fetchPaginated(int pageSize, int offset) async {
    final entries = await _database.query(
      _noteTableName,
      limit: pageSize,
      offset: offset,
      orderBy: '$_lastModifyDateColumnName DESC',
    );

    return _mapEntriesToNoteEntities(entries);
  }

  Future<NoteEntity> fetchById(int id) async {
    final entries = await _database.query(
      _noteTableName,
      orderBy: '$_lastModifyDateColumnName DESC',
      where: '$_idColumnName = ?',
      whereArgs: [id],
    );

    return _mapEntriesToNoteEntities(entries).first;
  }

  Future<List<NoteEntity>> fetchByTitleAndContent(String keyword) async {
    final entries = await _database.query(
      _noteTableName,
      where: '$_titleColumnName LIKE ? OR $_contentColumnName LIKE ?',
      orderBy: '$_lastModifyDateColumnName DESC',
      whereArgs: ['%$keyword%', '%$keyword%'],
    );

    return _mapEntriesToNoteEntities(entries);
  }

  Future<void> insert(Note note) async {
    await _database.insert(_noteTableName, {
      _titleColumnName: note.title ?? "",
      _contentColumnName: note.content ?? "",
      _imagePathsColumnName: jsonEncode(note.imagePaths ?? []),
      _crateDateColumnName: DateTime.now().millisecondsSinceEpoch,
      _lastModifyDateColumnName: DateTime.now().millisecondsSinceEpoch,
    });
  }

  Future<void> deleteById(int id) async {
    await _database.delete(
      _noteTableName,
      where: '$_idColumnName = ?',
      whereArgs: [id],
    );
  }

  Future<void> update(Note note) async {
    await _database.update(
      _noteTableName,
      {
        _idColumnName: note.id,
        _titleColumnName: note.title,
        _contentColumnName: note.content,
        _imagePathsColumnName: jsonEncode(note.imagePaths ?? []),
        _lastModifyDateColumnName: DateTime.now().millisecondsSinceEpoch,
      },
      where: '$_idColumnName = ?',
      whereArgs: [note.id],
    );
  }

  Future<int> countRows() async {
    try {
      final count = firstIntValue(
        await _database.query(_noteTableName, columns: ['COUNT(*)']),
      );
      return count ?? 0;
    } on Exception catch (e) {
      return 0;
    }
  }

  Future<void> insertDemo() async {
    try {
      int count = await countRows();
      if (count == 0) {
        for (int i = 1; i <= 50; i++) {
          await insert(Note(title: "title $i", content: "content $i"));
        }
      }
    } on Exception catch (e) {}
  }

  List<NoteEntity> _mapEntriesToNoteEntities(
    List<Map<String, Object?>> entries,
  ) {
    return entries
        .map(
          (element) => NoteEntity(
            id: element[_idColumnName] as int,
            title: element[_titleColumnName] as String,
            content: element[_contentColumnName] as String,
            imagePaths: jsonDecode(
              (element[_imagePathsColumnName] as String? ?? ""),
            ).cast<String>(),
            createDate: DateTime.fromMillisecondsSinceEpoch(
              element[_crateDateColumnName] as int,
            ),
            lastModifyDate: DateTime.fromMillisecondsSinceEpoch(
              element[_lastModifyDateColumnName] as int,
            ),
          ),
        )
        .toList();
  }
}
