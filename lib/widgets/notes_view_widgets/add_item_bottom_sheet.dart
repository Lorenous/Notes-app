import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notes_view_widgets/add_item_button.dart';
import 'package:notes_app/widgets/custom_text_feild.dart';

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

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomTextFeild(
            hintText: 'Title',
            onSaved: (value) => title = value,
          ),
          const SizedBox(height: 16),
          CustomTextFeild(
            hintText: 'Content',
            maxLines: 5,
            onSaved: (value) => subTitle = value,
          ),
          const SizedBox(height: 64),
          AddItemButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                setState(() {
                  autovalidateMode = AutovalidateMode.always;
                });
              }
            },
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
