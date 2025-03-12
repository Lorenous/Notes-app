import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notes_view_widgets/notes_list_view.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 8),
            CustomAppBar(title: 'Notes', iconData: Icons.search),
            SizedBox(height: 8),
            Expanded(child: NotesListView())
          ],
        ),
      ),
    );
  }
}
