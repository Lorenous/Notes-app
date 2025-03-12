import 'package:flutter/material.dart';

class AddItemButton extends StatelessWidget {
  final void Function()? onPressed;
  const AddItemButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          backgroundColor: Colors.cyanAccent,
          foregroundColor: Colors.black,
        ),
        child: const Text('Add'),
      ),
    );
  }
}
