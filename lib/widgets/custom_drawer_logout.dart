import 'package:flutter/material.dart';

class CustomLogoutButton extends StatelessWidget {
  final Icon icon;
  final Color iconColor;
  final String text;

  const CustomLogoutButton({
    required this.icon,
    required this.text,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(text),
      iconColor: Colors.red,
    );
  }
}
