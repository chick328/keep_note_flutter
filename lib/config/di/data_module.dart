import 'package:get_it/get_it.dart';
import 'package:keep_note/data/local_notification_manager.dart';
import 'package:keep_note/data/note/note_repository_impl.dart';
import 'package:keep_note/data/shared_pref_manager_impl.dart';
import 'package:keep_note/domain/image_repository.dart';
import 'package:keep_note/domain/note/note_repository.dart';
import 'package:keep_note/domain/shared_pref_manager.dart';
import 'package:sqflite/sqflite.dart';

import '../../data/app_database.dart';
import '../../data/image_repository_impl.dart';

final locator = GetIt.instance;

void configureDataModuleDependencies() {
  locator.registerLazySingleton<AppDatabase>(
    () => AppDatabase(databaseFactory: databaseFactory),
  );
  locator.registerLazySingleton<SharedPrefManager>(
    () => SharedPrefManagerImpl(),
  );

  locator.registerLazySingleton<NoteRepository>(
    () => NoteRepositoryImpl(database: locator()),
  );

  locator.registerLazySingleton<ImageRepository>(() => ImageRepositoryImpl());

  locator.registerLazySingleton<LocalNotificationManager>(
    () => LocalNotificationManager(),
  );
}
