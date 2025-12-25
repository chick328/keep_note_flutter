import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:keep_note/domain/note/model/note.dart';

part 'note_entity.freezed.dart';

@freezed
abstract class NoteEntity with _$NoteEntity {
  const NoteEntity._();

  const factory NoteEntity({
    required String id,
    String? title,
    String? content,
    List<String>? imagePaths,
    int? scheduledNotificationId,
    DateTime? scheduledNotificationDateTime,
    required DateTime lastModifyDate,
  }) = _NoteEntity;

  Note toNote() => Note(
    id: id,
    title: title,
    content: content,
    imagePaths: imagePaths,
    scheduledNotificationId: scheduledNotificationId,
    scheduledNotificationDateTime: scheduledNotificationDateTime,
  );
}
