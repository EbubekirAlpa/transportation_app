import 'package:flutter/material.dart';
import 'package:transportation_app/pages/home_pagescreen.dart';

void main() {
  runApp(const MyApp());
}

final class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.white, background: Colors.white),
        useMaterial3: true,
      ),
      home: const HomePageScreen(),
    );
  }
}
