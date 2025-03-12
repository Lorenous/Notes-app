import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notes_view_widgets/custom_search_icon.dart';

class NotesViewAppBar extends StatelessWidget {
  const NotesViewAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Notes',
          style: TextStyle(fontSize: 24),
        ),
        CustomSearchIcon()
      ],
    );
  }
}
