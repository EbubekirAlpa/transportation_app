import 'package:flutter/material.dart';

class CustomColors {
  static const Color white = Color(0xFFEEEEFE);
  static const Color navyBlue = Color(0xFF191849);
  static const Color lightBlue = Color(0xFF5550F2);
  static const Color lightPurple = Color(0xFF7773F5);
  static const Color lightWhite = Color(0xFFCCCBFB);
  static const Color black = Color(0xFF000000);
  static const Color grey = Color(0xFF9CA3AF);
}

class AppConstants {
  static AppConstants? _instance;

  static AppConstants get instance {
    _instance ??= AppConstants._init();
    return _instance!;
  }

  AppConstants._init();
}
