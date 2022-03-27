import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.orange;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      //PrimaryColor
      primaryColor: primary,
      //AppBar Theme
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),
      textButtonTheme:
          TextButtonThemeData(style: TextButton.styleFrom(primary: primary)));

  static final ThemeData darkTheme =
      ThemeData.dark().copyWith(scaffoldBackgroundColor: Colors.black);
}
