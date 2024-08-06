import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../pallete.dart';

class AppTextTheme {
  static TextTheme get lightTextTheme {
    final textTheme = GoogleFonts.interTextTheme(
      TextTheme(
        titleLarge: const TextStyle().copyWith(
          color: Pallete.dark,
        ),
        bodyLarge: const TextStyle().copyWith(
          color: Pallete.dark,
        ),
        bodyMedium: const TextStyle().copyWith(
          color: Pallete.dark,
        ),
        bodySmall: const TextStyle().copyWith(
          color: Pallete.labelText,
        ),
        labelMedium: const TextStyle().copyWith(
          color: Pallete.labelText,
        ),
      ),
    );
    return textTheme;
  }
}
