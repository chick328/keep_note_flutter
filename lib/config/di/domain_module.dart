import 'package:get_it/get_it.dart';
import 'package:keep_note/domain/note/save_note_image_use_case.dart';

import '../../domain/note/schedule_note_notification_use_case.dart';

final locator = GetIt.instance;

void configureDomainModuleDependencies() {
  locator.registerLazySingleton<SaveNoteImageUseCase>(
    () => SaveNoteImageUseCase(
      noteRepository: locator(),
      imageRepository: locator(),
    ),
  );
  locator.registerLazySingleton<ScheduleNoteNotificationUseCase>(
    () => ScheduleNoteNotificationUseCase(
      noteRepository: locator(),
      localNotificationManager: locator(),
    ),
  );
}
