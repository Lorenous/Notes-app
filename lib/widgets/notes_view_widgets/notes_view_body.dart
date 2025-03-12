import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notes_view_widgets/note_item.dart';
import 'package:notes_app/widgets/notes_view_widgets/notes_view_app_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const NotesViewAppBar(),
            NoteItem(),
          ],
        ),
      ),
    );
  }
}
