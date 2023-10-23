import 'package:flutter/material.dart';

class CustomDrawerHeader extends StatelessWidget {
  final String kullaniciAdi;
  final String kullaniciEmail;

  const CustomDrawerHeader({
    required this.kullaniciAdi,
    required this.kullaniciEmail,
  });

  @override
  Widget build(BuildContext context) {
    return UserAccountsDrawerHeader(
      accountName: Text(kullaniciAdi),
      accountEmail: Text(kullaniciEmail),
      currentAccountPicture: const CircleAvatar(
        child: FlutterLogo(),
      ),
      margin: const EdgeInsets.all(0),
    );
  }
}
