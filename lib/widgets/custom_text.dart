import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color textColor;
  final double fontSize;

  const CustomText(
      {super.key,
      required this.text,
      required this.textColor,
      required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: textColor,
        fontSize: fontSize,
      ),
    );
  }
}
