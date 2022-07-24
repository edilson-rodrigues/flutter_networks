import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppColors {
  static const MaterialColor blue = MaterialColor(
    _bluePrimaryValue,
    <int, Color>{
      50: Color(0xFFE3F2FD),
      100: Color(0xFFBBDEFB),
      200: Color(0xFF90CAF9),
      300: Color(0xFF64B5F6),
      400: Color(0xFF00AFFF),
      500: Color(_bluePrimaryValue),
      600: Color(0xFF1E88E5),
      700: Color(0xFF0073CD),
      800: Color(0xFF0151B8),
      900: Color(0xFF003D7A),
    },
  );
  static const int _bluePrimaryValue = 0xFF2E83CF;

  static const Color gray = Color(0xFF364353);

  static const primaryGradient = [
    Color(0xff00ABF9),
    Color(0xff006DC4),
  ];
}
