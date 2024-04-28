import 'package:flutter/material.dart';
import 'package:ui_3_lock_apk/screens/on_bording_screen.dart';
import 'package:ui_3_lock_apk/theme/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lock Apk',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
        useMaterial3: true,
        
      ),
      home: const OnBoardingScreen(),
    );
  }
}
