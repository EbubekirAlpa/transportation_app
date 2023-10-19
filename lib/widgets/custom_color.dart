import 'package:flutter/material.dart';

class CustomColors {
  static const Color white = Color(0xffEEEEFE);
  static const Color navyblue = Color(0xff191849);
  static const Color lightblue = Color(0xff5550F2);
  static const Color lightpurple = Color(0xff7773F5);
  static const Color lightwhite = Color(0xffCCCBFB);
}

class AppConstants {
  static AppConstants? _instance;

  static AppConstants get instance {
    _instance ??= AppConstants._init();
    return _instance!;
  }

  AppConstants._init();
}
