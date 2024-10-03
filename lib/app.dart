import 'package:flutter/material.dart';
import 'package:prudence/core/themes/theme_data.dart';
import 'package:prudence/router/navigation.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: AppThemeData.lightTheme,
      darkTheme: AppThemeData.darkTheme,
      home: const Navigation(),
    );
  }
}
