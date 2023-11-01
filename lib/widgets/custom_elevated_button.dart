import 'package:flutter/material.dart';

final class CustomizedElevatedButton extends StatelessWidget {
  final String? buttonText;
  final Color? buttonColor;
  final Color? textColor;
  final Color? foregroundColor;
  final VoidCallback? onPressed;

  const CustomizedElevatedButton(
      {Key? key,
      this.buttonText,
      this.buttonColor,
      this.foregroundColor,
      this.textColor,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(10.0),
        child: SizedBox(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: buttonColor,
              foregroundColor: foregroundColor,
              side: const BorderSide(width: 1, color: Color(0xff5550F2)),
            ),
            onPressed: () {},
            child: Text(
              buttonText ?? "",
              style: TextStyle(color: textColor, fontSize: 28),
            ),
          ),
        ),
      );
}
