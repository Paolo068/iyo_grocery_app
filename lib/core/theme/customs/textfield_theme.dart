import 'package:flutter/material.dart';

import '../../pallete.dart';

class AppTextFieldTheme {
  static final inputDecorationTheme = InputDecorationTheme(
      fillColor: Colors.grey.shade100.withOpacity(0.5),
      filled: true,
      isDense: true,
      hintStyle: const TextStyle(color: Colors.grey),
      labelStyle: const TextStyle(color: Colors.grey),
      border: const OutlineInputBorder(),
      enabledBorder: _enableBorder,
      focusedBorder: _focusedBorder,
      disabledBorder: _disabledBorder,
      // suffixIconColor: Pallete.accentColor,
      // floatingLabelStyle: const TextStyle(color: Pallete.accentColor),
      floatingLabelBehavior: FloatingLabelBehavior.always,
      errorBorder: _errorBorder,
      focusedErrorBorder: _focusedErrorBorder);
  static InputBorder get _enableBorder => OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        borderSide: BorderSide(color: Colors.grey.shade400),
      );
  static InputBorder get _focusedBorder => const OutlineInputBorder(
        borderSide: BorderSide(color: Pallete.primary),
        borderRadius: BorderRadius.all(Radius.circular(15)),
      );
  static InputBorder get _disabledBorder => OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey.shade400),
        borderRadius: const BorderRadius.all(Radius.circular(15)),
      );
  static InputBorder get _errorBorder => const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red, width: 1),
        borderRadius: BorderRadius.all(Radius.circular(15)),
      );
  static InputBorder get _focusedErrorBorder => const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red, width: 1),
        borderRadius: BorderRadius.all(Radius.circular(15)),
      );
}
