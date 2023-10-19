import 'package:flutter/material.dart';

class CustomNavigation extends StatelessWidget {
  final String text;
  final Color textColor;

  const CustomNavigation(
      {super.key, required this.text, required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: TextStyle(fontSize: 18, color: textColor),
      ),
    );
  }
}
