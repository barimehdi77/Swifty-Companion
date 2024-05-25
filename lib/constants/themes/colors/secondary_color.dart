import 'package:flutter/material.dart';

class SecondaryColor {
  static const MaterialColor secondarycolor =
      MaterialColor(_secondarycolorPrimaryValue, <int, Color>{
    50: Color(0xFFE9E1FF),
    100: Color(0xFFC9B5FF),
    200: Color(0xFFA584FF),
    300: Color(0xFF8052FF),
    400: Color(0xFF652DFF),
    500: Color(_secondarycolorPrimaryValue),
    600: Color(0xFF4307FF),
    700: Color(0xFF3A06FF),
    800: Color(0xFF3204FF),
    900: Color(0xFF2202FF),
  });
  static const int _secondarycolorPrimaryValue = 0xFF4A08FF;

  static const MaterialColor secondarycolorAccent =
      MaterialColor(_secondarycolorAccentValue, <int, Color>{
    100: Color(0xFFFFFFFF),
    200: Color(_secondarycolorAccentValue),
    400: Color(0xFFC4BFFF),
    700: Color(0xFFADA6FF),
  });
  static const int _secondarycolorAccentValue = 0xFFF3F2FF;
}
