import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prudence/core/utils/colors.dart';

class AppTextTheme {
  AppTextTheme._();

  // light text theme
  static TextTheme lightTextTheme = TextTheme(
    // title texts
    titleSmall: GoogleFonts.spaceGrotesk(
      fontWeight: FontWeight.w400,
      color: black,
    ),
    titleMedium: GoogleFonts.spaceGrotesk(
      fontWeight: FontWeight.w600,
      color: black,
    ),
    titleLarge: GoogleFonts.spaceGrotesk(
      fontWeight: FontWeight.w700,
      color: black,
    ),

    // body texts
    bodySmall: GoogleFonts.spaceGrotesk(
      fontWeight: FontWeight.w300,
      color: black,
    ),
    bodyMedium: GoogleFonts.spaceGrotesk(
      fontWeight: FontWeight.w400,
      color: black,
    ),
    bodyLarge: GoogleFonts.spaceGrotesk(
      fontWeight: FontWeight.w500,
      color: black,
    ),

    // label texts
    labelSmall: GoogleFonts.spaceGrotesk(
      fontWeight: FontWeight.w400,
      color: black,
    ),
    labelMedium: GoogleFonts.spaceGrotesk(
      fontWeight: FontWeight.w500,
      color: black,
    ),
    labelLarge: GoogleFonts.spaceGrotesk(
      fontWeight: FontWeight.w600,
      color: black,
    ),
  );

  // dark text theme
  static TextTheme darkTextTheme = TextTheme(
    // title texts
    titleSmall: GoogleFonts.spaceGrotesk(
      fontWeight: FontWeight.w400,
      color: white,
    ),
    titleMedium: GoogleFonts.spaceGrotesk(
      fontWeight: FontWeight.w600,
      color: white,
    ),
    titleLarge: GoogleFonts.spaceGrotesk(
      fontWeight: FontWeight.w700,
      color: white,
    ),

    // body texts
    bodySmall: GoogleFonts.spaceGrotesk(
      fontWeight: FontWeight.w300,
      color: white,
    ),
    bodyMedium: GoogleFonts.spaceGrotesk(
      fontWeight: FontWeight.w400,
      color: white,
    ),
    bodyLarge: GoogleFonts.spaceGrotesk(
      fontWeight: FontWeight.w500,
      color: white,
    ),

    // label texts
    labelSmall: GoogleFonts.spaceGrotesk(
      fontWeight: FontWeight.w400,
      color: white,
    ),
    labelMedium: GoogleFonts.spaceGrotesk(
      fontWeight: FontWeight.w500,
      color: white,
    ),
    labelLarge: GoogleFonts.spaceGrotesk(
      fontWeight: FontWeight.w600,
      color: white,
    ),
  );
}
