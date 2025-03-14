import 'package:flutter/material.dart';

class AddNoteButton extends StatelessWidget {
  final void Function()? onPressed;
  final bool isLoading;
  const AddNoteButton({
    super.key,
    required this.onPressed,
    this.isLoading = false,
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
        child: isLoading
            ? const SizedBox(
                width: 24,
                height: 24,
                child: CircularProgressIndicator(
                  color: Colors.black,
                ),
              )
            : const Text('Add'),
      ),
    );
  }
}
