import 'package:flutter/material.dart';

class CustomAppBarIcon extends StatelessWidget {
  final IconData iconData;
  const CustomAppBarIcon({
    super.key,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(iconData),
      style: IconButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        backgroundColor: Colors.white.withAlpha(20),
      ),
    );
  }
}
