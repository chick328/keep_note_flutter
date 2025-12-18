import 'package:sqflite/sqflite.dart';
import 'package:sqflite/utils/utils.dart';

import '../../domain/note/model/note.dart';
import '../../domain/util/result.dart';
import 'model/note_entity.dart';

class NoteDao {
  static const String _noteTableName = 'note';
  static const String _idColumnName = '_id';
  static const String _titleColumnName = 'title';
  static const String _contentColumnName = 'content';

  NoteDao({required Database database}) : _database = database;

  final Database _database;

  Future<void> createTable() async {
    _database.execute(
      'CREATE TABLE $_noteTableName($_idColumnName INTEGER PRIMARY KEY AUTOINCREMENT, $_titleColumnName TEXT, $_contentColumnName TEXT)',
    );
  }

  Future<List<NoteEntity>> fetchAll() async {
    final entries = await _database.query(
      _noteTableName,
      columns: [_idColumnName, _titleColumnName, _contentColumnName],
      orderBy: '$_idColumnName DESC',
    );
    final list = entries
        .map(
          (element) => NoteEntity(
            id: element[_idColumnName] as int,
            title: element[_titleColumnName] as String,
            content: element[_contentColumnName] as String,
          ),
        )
        .toList();
    return list;
  }

  Future<List<NoteEntity>> fetchPaginated(int pageSize, int offset) async {
    final entries = await _database.query(
      _noteTableName,
      columns: [_idColumnName, _titleColumnName, _contentColumnName],
      limit: pageSize,
      offset: offset,
      orderBy: '$_idColumnName DESC',
    );
    final list = entries
        .map(
          (element) => NoteEntity(
            id: element[_idColumnName] as int,
            title: element[_titleColumnName] as String,
            content: element[_contentColumnName] as String,
          ),
        )
        .toList();
    return list;
  }

  Future<NoteEntity> fetchById(int id) async {
    final entries = await _database.query(
      _noteTableName,
      columns: [_idColumnName, _titleColumnName, _contentColumnName],
      orderBy: '$_idColumnName DESC',
      where: '$_idColumnName = ?',
      whereArgs: [id],
    );
    final list = entries
        .map(
          (element) => NoteEntity(
            id: element[_idColumnName] as int,
            title: element[_titleColumnName] as String,
            content: element[_contentColumnName] as String,
          ),
        )
        .toList();
    return list.first;
  }

  Future<void> insert(Note note) async {
    await _database.insert(_noteTableName, {
      _titleColumnName: note.title ?? "",
      _contentColumnName: note.content ?? "",
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
    final NoteEntity noteEntity = note.toNoteEntity();
    await _database.update(
      _noteTableName,
      {
        _idColumnName: noteEntity.id,
        _titleColumnName: noteEntity.title,
        _contentColumnName: noteEntity.content,
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
      // return Result.ok(listing);
      return count ?? 0;
    } on Exception catch (e) {
      // return Result.error(e);
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
  //
  // Map<String, dynamic> noteEntityToDbMap(NoteEntity note) {
  //   return {
  //     _idColumnName: note.id,
  //     _titleColumnName: note.title,
  //     _contentColumnName: note.content,
  //   };
  // }
}
