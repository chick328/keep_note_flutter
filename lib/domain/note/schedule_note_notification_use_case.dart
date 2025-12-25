import 'dart:math';

import 'package:keep_note/data/local_notification_manager.dart';

import '../util/result.dart';
import 'model/note.dart';
import 'note_repository.dart';

class ScheduleNoteNotificationUseCase {
  ScheduleNoteNotificationUseCase({
    required NoteRepository noteRepository,
    required LocalNotificationManager localNotificationManager,
  }) : _noteRepository = noteRepository,
       _localNotificationManager = localNotificationManager;

  Future<Result<Note>> schedule(DateTime scheduledDateTime, Note note) async {
    final notiId = Random().nextInt(9999);
    final newNote = note.copyWith(
      scheduledNotificationId: notiId,
      scheduledNotificationDateTime: scheduledDateTime,
    );
    final result = await _noteRepository.insertOrUpdateNote(newNote);
    switch (result) {
      case Success<void>():
        await _localNotificationManager.scheduleNotification(
          notiId,
          note.title ?? "Keep Note reminder",
          note.content ?? "You have set a reminder for a note",
          scheduledDateTime,
        );
        return Result.success(newNote);
      case Error():
        return Result.error(result.error);
    }
  }

  Future<Result<Note>> cancel(Note note) async {
    if (note.scheduledNotificationId != null) {
      final newNote = note.copyWith(
        scheduledNotificationId: null,
        scheduledNotificationDateTime: null,
      );
      final result = await _noteRepository.insertOrUpdateNote(newNote);
      switch (result) {
        case Success<void>():
          await _localNotificationManager.cancelScheduledNotification(
            note.scheduledNotificationId!,
          );
          return Result.success(newNote);
        case Error():
          return Result.error(result.error);
      }
    } else {
      return Result.error(Exception("Note scheduledNotificationId not found"));
    }
  }

  final NoteRepository _noteRepository;
  final LocalNotificationManager _localNotificationManager;
}
