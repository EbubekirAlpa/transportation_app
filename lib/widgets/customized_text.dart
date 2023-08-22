import 'package:flutter/material.dart';

class customizedText extends StatelessWidget {
  final String text;
  final Color textcolor;

  customizedText({required this.text, required this.textcolor});

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
