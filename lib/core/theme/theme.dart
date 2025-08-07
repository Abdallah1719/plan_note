import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightMode = ThemeData(
    brightness: Brightness.light,
    fontFamily: 'Poppins',
    // app Bar Theme
    appBarTheme: AppBarTheme(),
    //textTheme
    textTheme: TextTheme(
      titleLarge: TextStyle(),
      titleMedium: TextStyle(),
      titleSmall: TextStyle(),
      headlineLarge: TextStyle(),
      headlineMedium: TextStyle(),
      headlineSmall: TextStyle(),
      bodyLarge: TextStyle(fontSize: 22, color: Colors.black),
      bodyMedium: TextStyle(),
      bodySmall: TextStyle(),
    ),

    // input Decoration Theme
    inputDecorationTheme: InputDecorationTheme(
      // enabledBorder
      enabledBorder: OutlineInputBorder(),
      // focusedBorder
      focusedBorder: OutlineInputBorder(),
    ),
    // Button Theme
    buttonTheme: ButtonThemeData(),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(),
    ),
  );

  // Dark Theme
  static final ThemeData darkMode = ThemeData(
    brightness: Brightness.dark,
    fontFamily: 'Poppins',
    // app Bar Theme
    appBarTheme: AppBarTheme(),
    //textTheme
    textTheme: TextTheme(
      titleLarge: TextStyle(),
      titleMedium: TextStyle(),
      titleSmall: TextStyle(),
      headlineLarge: TextStyle(),
      headlineMedium: TextStyle(),
      headlineSmall: TextStyle(),
      bodyLarge: TextStyle(fontSize: 22, color: Colors.white),
      bodyMedium: TextStyle(),
      bodySmall: TextStyle(),
    ),

    // input Decoration Theme
    inputDecorationTheme: InputDecorationTheme(
      // enabledBorder
      enabledBorder: OutlineInputBorder(),
      // focusedBorder
      focusedBorder: OutlineInputBorder(),
    ),
    // Button Theme
    buttonTheme: ButtonThemeData(),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(),
    ),
  );
}
