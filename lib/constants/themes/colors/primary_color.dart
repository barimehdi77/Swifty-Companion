import 'package:flutter/material.dart';

class PrimaryColor {
  static const MaterialColor primarycolor =
      MaterialColor(_primarycolorPrimaryValue, <int, Color>{
    50: Color(0xFFFFF4E0),
    100: Color(0xFFFFE4B3),
    200: Color(0xFFFFD280),
    300: Color(0xFFFFC04D),
    400: Color(0xFFFFB326),
    500: Color(_primarycolorPrimaryValue),
    600: Color(0xFFFF9D00),
    700: Color(0xFFFF9300),
    800: Color(0xFFFF8A00),
    900: Color(0xFFFF7900),
  });
  static const int _primarycolorPrimaryValue = 0xFFFFA500;

  static const MaterialColor primarycolorAccent =
      MaterialColor(_primarycolorAccentValue, <int, Color>{
    100: Color(0xFFFFFFFF),
    200: Color(_primarycolorAccentValue),
    400: Color(0xFFFFDABF),
    700: Color(0xFFFFCBA6),
  });
  static const int _primarycolorAccentValue = 0xFFFFF8F2;
}
