import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notes_view_widgets/add_item_button.dart';
import 'package:notes_app/widgets/notes_view_widgets/custom_text_feild.dart';

class AddItemBottomSheet extends StatelessWidget {
  const AddItemBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 32, horizontal: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomTextFeild(hintText: 'Title'),
            SizedBox(height: 16),
            CustomTextFeild(hintText: 'Content', maxLines: 5),
            SizedBox(height: 64),
            AddItemButton(),
            SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
