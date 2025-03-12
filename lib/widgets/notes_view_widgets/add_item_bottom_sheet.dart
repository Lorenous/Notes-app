import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notes_view_widgets/custom_text_feild.dart';

class AddItemBottomSheet extends StatelessWidget {
  const AddItemBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 32, horizontal: 16),
        child: Column(
          children: [
            CustomTextFeild(hintText: 'Title'),
            SizedBox(height: 16),
            CustomTextFeild(hintText: 'Content', maxLines: 5),
          ],
        ),
      ),
    );
  }
}
