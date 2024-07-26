import 'package:flutter/material.dart';
import 'package:iyo_grocery_app/core/pallete.dart';
import 'package:iyo_grocery_app/core/theme/customs/appbar_theme.dart';

import 'customs/app_button_theme.dart';
import 'customs/app_text_theme.dart';
import 'customs/app_textfield_theme.dart';

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
    appBarTheme: AppbarTheme.lightAppBarTheme,
    // bottomSheetTheme: AppBottomSheetTheme.lightBottomSheetTheme,
    // chipTheme: AppChipTheme.lightChipTheme,
    outlinedButtonTheme: AppButtonTheme.outlinedButtonTheme,
    inputDecorationTheme: AppTextFieldTheme.inputDecorationTheme,
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
