import 'package:flutter/material.dart';

import '../../pallete.dart';

const radius = 15.0;
const borderColor = Pallete.inputBorder;

class AppTextFieldTheme {
  static final inputDecorationTheme = InputDecorationTheme(
      contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      fillColor: Colors.transparent,
      filled: true,
      isDense: true,
      hintStyle: const TextStyle(color: Pallete.hintText),
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

  static InputBorder get _enableBorder => const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(radius)),
        borderSide: BorderSide(color: borderColor),
      );
  static InputBorder get _focusedBorder => const OutlineInputBorder(
        borderSide: BorderSide(color: Pallete.primary),
        borderRadius: BorderRadius.all(Radius.circular(radius)),
      );
  static InputBorder get _disabledBorder => OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey.shade400),
        borderRadius: const BorderRadius.all(Radius.circular(radius)),
      );
  static InputBorder get _errorBorder => const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red, width: 1),
        borderRadius: BorderRadius.all(Radius.circular(radius)),
      );
  static InputBorder get _focusedErrorBorder => const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red, width: 1),
        borderRadius: BorderRadius.all(Radius.circular(radius)),
      );
}
