import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const CustomButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.black,
        minimumSize: const Size(double.infinity, 40),
        backgroundColor: const Color.fromARGB(255, 50, 214, 94),
      ),
      onPressed: onTap,
      child: Text(
        text,
      ),
    );
  }
}
