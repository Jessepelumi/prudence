import 'package:flutter/material.dart';
import 'package:prudence/src/core/themes/theme_data.dart';
import 'package:prudence/src/router/navigation.dart';

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
