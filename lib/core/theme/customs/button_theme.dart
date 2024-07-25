import 'package:flutter/material.dart';


class AppButtonTheme {
  static final ElevatedButtonThemeData elevatedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
    elevation: 0,
    foregroundColor: Colors.white,
    // backgroundColor: Pallete.accentColor,
    // disabledBackgroundColor: Pallete.accentColor,
    // disabledForegroundColor: Colors.white,
    minimumSize: const Size(double.maxFinite, 55),
       textStyle: const TextStyle(fontSize: 16),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
  ));

  ///
  static final OutlinedButtonThemeData outlinedButtonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
    // side: const BorderSide(color: Pallete.accentColor),
    elevation: 0,
    // foregroundColor: Pallete.accentColor,
    backgroundColor: Colors.white,
    disabledBackgroundColor: Colors.white,
    // disabledForegroundColor: Pallete.accentColor,
    minimumSize: const Size(double.infinity, 55),
    textStyle: const TextStyle(fontSize: 16),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
  ));
}
