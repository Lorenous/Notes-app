import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({
    super.key,
  });

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentColor = 0;
  List<Color> colors = const [
    Color(0xff219ebc),
    Color(0xff8ecae6),
    Color(0xff023047),
    Color(0xffffb703),
    Color(0xfffb8500),
    Color(0xffe9c46a),
    Color(0xff264653),
    Color(0xff2a9d8f),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => setState(() {
            currentColor = index;
            BlocProvider.of<AddNoteCubit>(context).color = colors[index];
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

class ColorItem extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorItem({
    super.key,
    required this.isSelected,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: isSelected
          ? CircleAvatar(
              backgroundColor: Colors.white,
              radius: 32,
              child: CircleAvatar(
                backgroundColor: color,
                radius: 29,
              ),
            )
          : CircleAvatar(
              backgroundColor: color,
              radius: 32,
            ),
    );
  }
}
