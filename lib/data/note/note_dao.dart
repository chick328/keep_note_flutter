import 'dart:convert';

import 'package:sqflite/sqflite.dart';
import 'package:sqflite/utils/utils.dart';
import 'package:uuid/uuid.dart';

import '../../domain/note/model/note.dart';
import 'model/note_entity.dart';

class NoteDao {
  static const String _noteTableName = 'note';
  static const String _idColumnName = '_id';
  static const String _titleColumnName = 'title';
  static const String _contentColumnName = 'content';
  static const String _imagePathsColumnName = 'image_paths';
  static const String _lastModifyDateColumnName = 'last_modify_date';
  static const String _scheduledNotificationIdColumnName =
      'scheduled_notification_id';
  static const String _scheduledNotificationDateTimeColumnName =
      'scheduled_notification_date_time';

  NoteDao({required Database database}) : _database = database;

  final Database _database;

  Future<void> createTable() async {
    _database.execute('''CREATE TABLE $_noteTableName
      (
        $_idColumnName TEXT PRIMARY KEY, 
        $_titleColumnName TEXT, 
        $_imagePathsColumnName TEXT, 
        $_contentColumnName TEXT, 
        $_lastModifyDateColumnName INTEGER, 
        $_scheduledNotificationIdColumnName INTEGER,
        $_scheduledNotificationDateTimeColumnName INTEGER
      )
      ''');
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

  Future<NoteEntity> fetchById(String id) async {
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

  Future<void> insertOrUpdate(Note note) async {
    await _database.insert(_noteTableName, {
      _idColumnName: note.id,
      _titleColumnName: note.title,
      _contentColumnName: note.content,
      _imagePathsColumnName: note.imagePaths != null
          ? jsonEncode(note.imagePaths!)
          : null,
      _lastModifyDateColumnName: DateTime.now().millisecondsSinceEpoch,
      _scheduledNotificationIdColumnName: note.scheduledNotificationId,
      _scheduledNotificationDateTimeColumnName:
          note.scheduledNotificationDateTime?.millisecondsSinceEpoch,
    }, conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<void> deleteById(String id) async {
    await _database.delete(
      _noteTableName,
      where: '$_idColumnName = ?',
      whereArgs: [id],
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
      final count = await countRows();
      final uuid = Uuid();
      if (count == 0) {
        for (int i = 1; i <= 50; i++) {
          await insertOrUpdate(
            Note(id: uuid.v4(), title: "title $i", content: "content $i"),
          );
        }
      }
    } on Exception catch (e) {}
  }

  List<NoteEntity> _mapEntriesToNoteEntities(
    List<Map<String, Object?>> entries,
  ) {
    return entries.map((element) {
      final id = element[_idColumnName] as String;
      final title = element[_titleColumnName] as String?;
      final content = element[_contentColumnName] as String?;
      final imagePaths = element[_imagePathsColumnName] as String?;
      final lastModifyDateTimestamp = element[_lastModifyDateColumnName] as int;
      final scheduledNotificationId =
          element[_scheduledNotificationIdColumnName] as int?;
      final scheduledNotificationDateTimeTimestamp =
          element[_scheduledNotificationDateTimeColumnName] as int?;

      return NoteEntity(
        id: id,
        title: title,
        content: content,
        imagePaths: imagePaths != null
            ? jsonDecode(imagePaths).cast<String>()
            : null,
        lastModifyDate: DateTime.fromMillisecondsSinceEpoch(
          lastModifyDateTimestamp,
        ),
        scheduledNotificationId: scheduledNotificationId,
        scheduledNotificationDateTime:
            scheduledNotificationDateTimeTimestamp != null
            ? DateTime.fromMillisecondsSinceEpoch(
                scheduledNotificationDateTimeTimestamp,
              )
            : null,
      );
    }).toList();
  }
}
