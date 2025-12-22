import 'dart:io';

import '../image_repository.dart';
import '../util/result.dart';
import 'model/note.dart';
import 'note_repository.dart';

class SaveNoteImageUseCase {
  SaveNoteImageUseCase({
    required NoteRepository noteRepository,
    required ImageRepository imageRepository,
  })
      : _noteRepository = noteRepository,
        _imageRepository = imageRepository;

  Future<Result<String>> invoke(File imageFile, Note note) async {
    final result = await _imageRepository.saveImageFileToAppDirectory(
        imageFile);
    switch (result) {
      case Success<File>():
        final newNote = note.copyWith(
            imagePaths: [result.value.path, ...?note.imagePaths]);
        final dbResult = await _noteRepository.insertOrUpdateNote(newNote);
        switch (dbResult) {
          case Success<void>():
            return Result.success(result.value.path);
          case Error():
            return Result.error(dbResult.error);
        }
      case Error():
        return Result.error(result.error);
    }
  }

  final NoteRepository _noteRepository;
  final ImageRepository _imageRepository;
}