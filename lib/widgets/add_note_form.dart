import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/colors_list_view.dart';
import 'package:notes_app/widgets/custom_text_feild.dart';
import 'package:notes_app/widgets/notes_view_widgets/add_note_button.dart';
import 'package:intl/intl.dart';

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
          const SizedBox(height: 32),
          const ColorsListView(),
          const SizedBox(height: 32),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return AddNoteButton(
                isLoading: state is AddNoteLoading ? true : false,
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    DateTime currentDate = DateTime.now();
                    String formattedDate =
                        DateFormat.yMMMd().format(currentDate).toString();
                    NoteModel note = NoteModel(
                        title: title!,
                        subTitle: subTitle!,
                        date: formattedDate,
                        color: Colors.blue.value);
                    BlocProvider.of<AddNoteCubit>(context).addNote(note);
                  } else {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
              );
            },
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
