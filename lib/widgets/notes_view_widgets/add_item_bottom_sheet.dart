import 'package:flutter/material.dart';
import 'package:notes_app/widgets/add_note_form.dart';

class AddItemBottomSheet extends StatelessWidget {
  const AddItemBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 32, horizontal: 16),
        child: AddNoteForm(),
      ),
    );
  }
}
