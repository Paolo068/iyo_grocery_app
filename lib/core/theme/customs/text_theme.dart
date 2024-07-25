import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../pallete.dart';

class AppTextTheme {
  static TextTheme get lightTextTheme {
    final textTheme = GoogleFonts.latoTextTheme();
    return textTheme.copyWith(
      headlineLarge: const TextStyle().copyWith(
        color: Pallete.primary,
        fontWeight: FontWeight.bold,
      ),
      titleLarge: const TextStyle().copyWith(
        fontWeight: FontWeight.bold,
        color: Pallete.primary,
      ),
      // bodyLarge: const TextStyle().copyWith(color: Pallete.textColor),
      bodyMedium: const TextStyle().copyWith(color: Pallete.mediumText),
      bodySmall: const TextStyle().copyWith(color: Pallete.labelText),
      labelMedium: const TextStyle().copyWith(color: Pallete.labelText),
    );
  }
}
