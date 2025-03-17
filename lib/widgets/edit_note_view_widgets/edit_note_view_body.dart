import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/colors_list_view.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_feild.dart';

class EditNoteViewBody extends StatefulWidget {
  final NoteModel note;
  const EditNoteViewBody({super.key, required this.note});

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 8),
            CustomAppBar(
              title: 'Edit Note',
              iconData: Icons.check,
              onPressed: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.subTitle = subTitle ?? widget.note.subTitle;

                widget.note.save();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                Navigator.pop(context);
              },
            ),
            const SizedBox(height: 32),
            CustomTextFeild(
              hintText: 'Title',
              onChanged: (value) => title = value,
            ),
            const SizedBox(height: 16),
            CustomTextFeild(
              hintText: 'Content',
              maxLines: 5,
              onChanged: (value) => subTitle = value,
            ),
            const SizedBox(height: 32),
            EditNoteColorListView(note: widget.note),
          ],
        ),
      ),
    );
  }
}

class EditNoteColorListView extends StatefulWidget {
  final NoteModel note;
  const EditNoteColorListView({
    super.key,
    required this.note,
  });

  @override
  State<EditNoteColorListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<EditNoteColorListView> {
  int currentColor = 0;
  List<Color> colors = const [
    Color(0xff219ebc),
    Color(0xff8ecae6),
    Color(0xffffb703),
    Color(0xfffb8500),
    Color(0xffe9c46a),
    Color(0xff2a9d8f),
  ];
  @override
  void initState() {
    currentColor = colors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => setState(() {
            currentColor = index;
            widget.note.color = colors[index].value;
          }),
          child: ColorItem(
            color: colors[index],
            isSelected: currentColor == index,
          ),
        ),
        itemCount: colors.length,
      ),
    );
  }
}
