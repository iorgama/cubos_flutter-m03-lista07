import 'package:flutter/material.dart';
import 'package:flutter_exercicio_06/Exercicio01/resources/theme.dart';
import 'package:flutter_exercicio_06/Exercicio01/my_fixed_tab.dart';
import 'resources/strings.dart';

void main() => runApp(const MyFixedApp());

class MyFixedApp extends StatefulWidget {
  const MyFixedApp({Key? key}) : super(key: key);

  @override
  State<MyFixedApp> createState() => _MyFixedAppState();
}

class _MyFixedAppState extends State<MyFixedApp> {
  ThemeMode currentThemeMode = ThemeMode.light;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: Strings.appName,
        themeMode: currentThemeMode,
        theme: MyFixedTabTheme.light,
        darkTheme: MyFixedTabTheme.dark,
        home: MyFixedTab(onThemeModePressed: toggleThemeMode));
  }

  void toggleThemeMode() {
    setState(() {
      currentThemeMode = currentThemeMode == ThemeMode.light
          ? ThemeMode.dark
          : ThemeMode.light;
    });
  }
}
