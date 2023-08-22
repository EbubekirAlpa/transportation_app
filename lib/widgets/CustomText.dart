import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color textcolor;

  CustomText({super.key, required this.text, required this.textcolor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child:
        Text(
          text,
          style: TextStyle(fontSize: 18, color: textcolor),
        ),
      ),
    );
  }
}
