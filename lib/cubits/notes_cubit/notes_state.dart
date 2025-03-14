part of 'notes_cubit.dart';

sealed class NotesState {}

final class NotesInitial extends NotesState {}

final class NotesSuccess extends NotesState {
  final List<NoteModel> notes;

  NotesSuccess({required this.notes});
}

final class NotesFailure extends NotesState {
  final String errMessage;

  NotesFailure({required this.errMessage});
}
