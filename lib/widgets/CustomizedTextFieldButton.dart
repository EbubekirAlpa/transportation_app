import 'package:flutter/material.dart';

class CustomizedTextFieldButton extends StatelessWidget {

  final TextEditingController ? myController ;
  final String ? hintText ;
  final String ? helperText ;
  final Color ? hintColor ;
  final bool ? isPassword ;

  const CustomizedTextFieldButton({Key? key, this.myController, this.hintText, this.helperText, this.isPassword, this.hintColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        obscureText: isPassword??true,
        controller: myController,
        decoration: InputDecoration(
          fillColor: const Color(0xffEEEEFE),
          filled: true,
          helperText: helperText,
          hintText: hintText,
          hintStyle: TextStyle(color: hintColor),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
