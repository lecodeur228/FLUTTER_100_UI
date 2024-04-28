import 'package:flutter/material.dart';
import 'package:ui_2/screens/home_screen.dart';
import 'package:ui_2/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobile Bank',
      debugShowCheckedModeBanner: false,
      theme: dark,
      home: const HomeScreen(),
    );
  }
}
