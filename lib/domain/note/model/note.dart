import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:keep_note/data/note/model/note_entity.dart';

part 'note.freezed.dart';

@freezed
abstract class Note with _$Note {
  const Note._();

  const factory Note({
    int? id,
    String? title,
    String? content,
    List<String>? imagePaths,
    DateTime? scheduledNotificationDateTime
  }) = _Note;
}
