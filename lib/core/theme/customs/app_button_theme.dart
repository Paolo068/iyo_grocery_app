import 'package:flutter/material.dart';

import '../../pallete.dart';

const radius = 10.0;
const fontSize = 18.0;
const btnHeight = 60.0;

class AppButtonTheme {
  static final ElevatedButtonThemeData elevatedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
    elevation: 0,
    foregroundColor: Colors.white,
    backgroundColor: Pallete.primary,
    // disabledBackgroundColor: Pallete.accentColor,
    // disabledForegroundColor: Colors.white,
    minimumSize: const Size.fromHeight(btnHeight),
    textStyle: const TextStyle(
      fontSize: fontSize,
    ),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
  ));

  ///
  static final OutlinedButtonThemeData outlinedButtonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
    side: const BorderSide(color: Pallete.btnBorder),
    elevation: 0,
    // foregroundColor: Pallete.accentColor,
    backgroundColor: Colors.white,
    disabledBackgroundColor: Colors.white,
    // disabledForegroundColor: Pallete.accentColor,
    minimumSize: const Size.fromHeight(btnHeight),
    textStyle: const TextStyle(fontSize: fontSize, fontWeight: FontWeight.w500),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
  ));
}
