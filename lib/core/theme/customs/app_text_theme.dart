import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../pallete.dart';

class AppTextTheme {
  static TextTheme get lightTextTheme {
    final textTheme = GoogleFonts.interTextTheme();
    return textTheme.copyWith(
      displayLarge: const TextStyle().copyWith(
        color: Colors.white,
        fontWeight: FontWeight.normal,
        fontFamily: GoogleFonts.ibmPlexSerif().fontFamily,
      ),
      headlineMedium: const TextStyle().copyWith(
        color: Pallete.dark,
        fontWeight: FontWeight.bold,
        // fontFamily: GoogleFonts.ibmPlexSerif().fontFamily,
      ),
      // titleLarge: const TextStyle().copyWith(
      //   fontFamily: GoogleFonts.ibmPlexSerif().fontFamily,
      // ),
      // bodyLarge: const TextStyle().copyWith(color: Pallete.textColor),
      bodyMedium: const TextStyle().copyWith(
        color: Pallete.mediumText,
      ),
      bodySmall: const TextStyle().copyWith(
        color: Pallete.labelText,
      ),
      labelMedium: const TextStyle().copyWith(
        color: Pallete.labelText,
      ),
    );
  }
}
