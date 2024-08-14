import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prudence/core/themes/text_theme.dart';
import 'package:prudence/core/utils/colors.dart';

class AppThemeData {
  AppThemeData._();

  // light theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: GoogleFonts.spaceGrotesk().fontFamily,
    brightness: Brightness.light,
    primaryColor: primary,
    scaffoldBackgroundColor: white,
    textTheme: AppTextTheme.lightTextTheme,
    appBarTheme: const AppBarTheme(
      backgroundColor: white,
      surfaceTintColor: white,
    ),
  );

  // dark theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: GoogleFonts.spaceGrotesk().fontFamily,
    brightness: Brightness.dark,
    primaryColor: primary,
    scaffoldBackgroundColor: black,
    textTheme: AppTextTheme.darkTextTheme,
    appBarTheme: const AppBarTheme(
      backgroundColor: black,
      surfaceTintColor: black,
    ),
  );
}
