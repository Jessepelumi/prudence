import 'package:flutter/material.dart';
import 'package:prudence/src/core/themes/text_theme.dart';
import 'package:prudence/src/core/utils/colors.dart';

class AppThemeData {
  AppThemeData._();

  // light theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
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
    brightness: Brightness.dark,
    scaffoldBackgroundColor: black,
    textTheme: AppTextTheme.darkTextTheme,
    appBarTheme: const AppBarTheme(
      backgroundColor: black,
      surfaceTintColor: black,
    ),
  );
}
