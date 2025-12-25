import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'note.freezed.dart';

@freezed
class Note with _$Note {
  Note({
    String? id,
    this.title,
    this.content,
    this.imagePaths,
    this.scheduledNotificationId,
    this.scheduledNotificationDateTime,
  }) : id = id ?? Uuid().v4();

  @override
  final String id;

  @override
  final String? title;

  @override
  final String? content;

  @override
  final List<String>? imagePaths;

  @override
  final int? scheduledNotificationId;

  @override
  final DateTime? scheduledNotificationDateTime;
}
