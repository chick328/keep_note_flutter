import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'note.freezed.dart';


@freezed
abstract class Note with _$Note {
  const factory Note({
    int? id,
    String? title,
    String? content,
  }) = _Note;
}