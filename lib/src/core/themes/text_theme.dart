import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prudence/src/core/utils/colors.dart';

class AppTextTheme {
  AppTextTheme._();

  // light text theme
  static TextTheme get lightTextTheme => GoogleFonts.senTextTheme().apply(
        bodyColor: black,
        displayColor: black,
      );

  // dark text theme
  static TextTheme get darkTextTheme => GoogleFonts.senTextTheme().apply(
        bodyColor: white,
        displayColor: white,
      );
}
