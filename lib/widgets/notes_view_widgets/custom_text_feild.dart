import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  final String hintText;
  final int? maxLines;
  const CustomTextFeild({
    super.key,
    required this.hintText,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.white,
      cursorWidth: 1,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.cyanAccent),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white70),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white70),
        ),
      ),
    );
  }
}
