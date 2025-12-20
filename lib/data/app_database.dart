import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import 'note/note_dao.dart';

class AppDatabase {
  AppDatabase({required this.databaseFactory});

  final DatabaseFactory databaseFactory;

  Database? _database;

  bool isOpen() => _database != null;

  NoteDao? noteDao;

  Future<void> open() async {
    _database = await databaseFactory.openDatabase(
      join(await databaseFactory.getDatabasesPath(), 'app_database.db'),
      options: OpenDatabaseOptions(
        onConfigure: (db) {
          noteDao = NoteDao(database: db);
        },
        onCreate: (db, version) async {
          await noteDao?.createTable();
          await noteDao?.insertDemo();
        },
        version: 1,
      ),
    );
  }

  Future<void> close() async {
    await _database?.close();
    _database = null;
  }
}
