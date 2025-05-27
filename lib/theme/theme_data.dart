import 'package:flutter/material.dart';

ThemeData myApplicationTheme() {
  return ThemeData(
    useMaterial3: false,
    primarySwatch: Colors.red,
    fontFamily: "Jaro",
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: const TextStyle(
          fontSize: 18,
          color: Color(0xFFFFFFFF),
          fontWeight: FontWeight.w500,
        ),
        backgroundColor: Color(0xFFF55345),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      ),
    ),
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      elevation: 0,
      backgroundColor: Color(0xFFF55345),
    ),
  );
}
