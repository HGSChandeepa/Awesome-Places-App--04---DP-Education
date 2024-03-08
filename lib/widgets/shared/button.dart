import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color bgColor;
  const CustomButton({
    super.key,
    required this.text,
    required this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 30,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 16,
          color: Colors.black,
        ),
      ),
    );
  }
}
