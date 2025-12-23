import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_presentation/bloc_presentation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:keep_note/domain/note/save_note_image_use_case.dart';

import '../../../domain/note/model/note.dart';
import '../../../domain/note/note_repository.dart';
import '../../../domain/util/result.dart';

part 'edit_event.dart';

part 'edit_presentation_event.dart';

part 'edit_state.dart';

part 'edit_bloc.freezed.dart';

class EditBloc extends Bloc<EditEvent, EditState>
    with BlocPresentationMixin<EditState, EditPresentationEvent> {
  EditBloc({
    required NoteRepository noteRepository,
    required SaveNoteImageUseCase saveNoteImageUseCase,
  })
      : _noteRepository = noteRepository,
        _saveNoteImageUseCase = saveNoteImageUseCase,
        super(EditState()) {
    on<EditEvent>((event, emit) async {
      await event.map(
        onTitleChanged: (event) {
          emit(state.copyWith(note: state.note.copyWith(title: event.title)));
          print(state);
        },
        onContentChanged: (event) {
          emit(
            state.copyWith(note: state.note.copyWith(content: event.content)),
          );
          print(state);
        },
        fetchNoteById: (event) async {
          final result = await _noteRepository.getNoteById(event.id);
          switch (result) {
            case Success<Note>():
              emit(state.copyWith(note: result.value));
            case Error():
          }
        },
        saveNote: (_) async {
          final currentNote = state.note;
          if (currentNote.title != null || currentNote.content != null) {
            final result = await _noteRepository.insertOrUpdateNote(
              currentNote,
            );
            switch (result) {
              case Success<void>():
              case Error():
            }
          }
        },
        pickImages: (event) async {
          final result = await _saveNoteImageUseCase.invoke(event.images.first, state.note);
          switch(result){
            case Success<String>():
              emit(
                state.copyWith(note: state.note.copyWith(
                    imagePaths: [result.value, ...?state.note.imagePaths]))
              );
            case Error():
          }
        }, scheduleNotification: (_ScheduleNotification value) {  },
      );
    });
  }

  final NoteRepository _noteRepository;
  final SaveNoteImageUseCase _saveNoteImageUseCase;
}
