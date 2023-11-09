import 'package:flutter/material.dart';

class CustomizedTextFieldButton extends StatelessWidget {
  final TextEditingController? myController;
  final String? hintText;
  final String? helperText;
  final Color? hintColor;
  final bool isPassword;

  const CustomizedTextFieldButton(
      {Key? key,
      this.myController,
      this.hintText,
      this.helperText,
      this.isPassword = true,
      this.hintColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height *
            0.12, // Ekran genişliğinin 80% kadar genişlik
        child: TextField(
          obscureText: isPassword,
          controller: myController,
          decoration: InputDecoration(
            fillColor: const Color(0xffEEEEFE),
            filled: true,
            contentPadding: const EdgeInsets.symmetric(
                vertical: 14.0,
                horizontal:
                    20.0), // Text alanının içerisindeki içerik ile kenarlıklar arasındaki boşluk
            helperText: helperText,
            hintText: hintText,
            hintStyle: TextStyle(color: hintColor),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
