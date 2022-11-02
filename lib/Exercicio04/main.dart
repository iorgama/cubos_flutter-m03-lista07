import 'package:flutter/material.dart';
import 'package:flutter_exercicio_06/Exercicio04/resources/theme.dart';
import 'package:flutter_exercicio_06/Exercicio04/turismo_list.dart';
import 'resources/strings.dart';

void main() => runApp(const App());

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  ThemeMode currentThemeMode = ThemeMode.light;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: Strings.appName,
        themeMode: currentThemeMode,
        theme: AppTheme.light,
        darkTheme: AppTheme.dark,
        home: TabScroll(onThemeModePressed: toggleThemeMode));
  }

  void toggleThemeMode() {
    setState(() {
      currentThemeMode = currentThemeMode == ThemeMode.light
          ? ThemeMode.dark
          : ThemeMode.light;
    });
  }
}
