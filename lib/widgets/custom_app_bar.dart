import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar_icon.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final IconData iconData;
  final void Function()? onPressed;
  const CustomAppBar({
    super.key,
    required this.title,
    required this.iconData,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 24),
        ),
        CustomAppBarIcon(
          iconData: iconData,
          onPressed: onPressed,
        ),
      ],
    );
  }
}
