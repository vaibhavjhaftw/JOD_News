import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: Colors.black,
      hintColor: Colors.grey,
      fontFamily: 'Poppins',
      textTheme: TextTheme(
        displayLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
        bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: Colors.black),
        bodyMedium: TextStyle(fontSize: 14, color: Colors.black),
      ),
    );
  }
}
