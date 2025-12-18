import 'package:get_it/get_it.dart';
import 'package:keep_note/data/note/note_repository_impl.dart';
import 'package:keep_note/domain/note/note_repository.dart';

final locator = GetIt.instance;

void configureDataModuleDependencies() {
  locator.registerLazySingleton<NoteRepository>(
      () => NoteRepositoryImpl(database: locator())
  );
}