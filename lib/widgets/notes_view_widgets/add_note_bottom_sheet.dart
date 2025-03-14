import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/widgets/add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: SingleChildScrollView(
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteFailure) {
              debugPrint('Failed in ${state.errMessage}');
            }
            if (state is AddNoteSuccess) Navigator.pop(context);
          },
          builder: (context, state) {
            return const Padding(
              padding: EdgeInsets.symmetric(vertical: 32, horizontal: 16),
              child: AddNoteForm(),
            );
          },
        ),
      ),
    );
  }
}
