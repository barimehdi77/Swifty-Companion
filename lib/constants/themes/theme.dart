import 'package:flutter/material.dart';
import 'package:swifty_companion/constants/themes/colors/primary_color.dart';
import 'package:swifty_companion/constants/themes/custom_themes/text_theme.dart';

class SCAppTheme {
  SCAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Cairo',
    brightness: Brightness.light,
    primaryColor: PrimaryColor.primarycolor,
    scaffoldBackgroundColor: Colors.white,
    textTheme: SCTextTheme.lightTextTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Cairo',
    brightness: Brightness.dark,
    primaryColor: PrimaryColor.primarycolor,
    scaffoldBackgroundColor: Colors.black,
    textTheme: SCTextTheme.darkTextTheme,
  );
}
