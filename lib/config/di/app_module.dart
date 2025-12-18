import 'package:get_it/get_it.dart';
import 'package:sqflite/sqflite.dart';

import '../../data/common/app_database.dart';

final locator = GetIt.instance;

void configureAppModuleDependencies() {
  locator.registerLazySingleton<AppDatabase>(
      () => AppDatabase(databaseFactory: databaseFactory)
  );
}