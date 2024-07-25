import 'package:flutter/material.dart';
import 'package:iyo_grocery_app/core/pallete.dart';

import 'customs/button_theme.dart';
import 'customs/text_theme.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    canvasColor: Colors.transparent,
    highlightColor: Colors.transparent,
    splashColor: Colors.transparent,
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: Pallete.primary,
    scaffoldBackgroundColor: Colors.white,
    textTheme: AppTextTheme.lightTextTheme,
    elevatedButtonTheme: AppButtonTheme.elevatedButtonTheme,
    // appBarTheme: CustomAppBarTheme.lightAppBarTheme,
    // bottomSheetTheme: AppBottomSheetTheme.lightBottomSheetTheme,
    // chipTheme: AppChipTheme.lightChipTheme,
    // outlinedButtonTheme: AppOutlinedButton.lightOutlinedButtonTheme,
    // inputDecorationTheme: AppTextFormFieldTheme.lightInputDecorationTheme,
    // checkboxTheme: AppCheckboxTheme.lightCheckboxTheme,
    // textButtonTheme: AppTextButtonTheme.lightTextButtonTheme,
  );

  // static ThemeData darkTheme = ThemeData(
  //     useMaterial3: true,
  //     brightness: Brightness.dark,
  //     primaryColor: Colors.blue,
  //     scaffoldBackgroundColor: Colors.black,
  //     textTheme: AppTextTheme.darkTextTheme,
  //     appBarTheme: CustomAppBarTheme.darkAppBarTheme,
  //     elevatedButtonTheme: AppElevatedButton.darkElevatedButtonTheme,
  //     bottomSheetTheme: AppBottomSheetTheme.darkBottomSheetTheme,
  //     chipTheme: AppChipTheme.darkChipTheme,
  //     outlinedButtonTheme: AppOutlinedButton.darkOutlinedButtonTheme,
  //     inputDecorationTheme: AppTextFormFieldTheme.darkInputDecorationTheme,
  //     checkboxTheme: AppCheckboxTheme.darkCheckboxTheme);
}
