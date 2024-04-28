import 'package:flutter/material.dart';

ThemeData dark = ThemeData.dark(
  useMaterial3: true,
).copyWith(
    scaffoldBackgroundColor: const Color(0XFF1F1F1F),
    primaryColorDark: const Color(0XFF282828),
    textTheme: const TextTheme(displayLarge: TextStyle(color: Colors.white)));
