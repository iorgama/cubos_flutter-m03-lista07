import 'package:flutter/material.dart';

class AppTheme {
  static final light = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.deepPurple,
    scaffoldBackgroundColor: Colors.grey[200],
    textTheme: _textTheme,
  );

  static final dark = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.green,
    textTheme: _textTheme,
  );

  static const _textTheme = TextTheme(
    bodyText2: TextStyle(fontSize: 20.0),
  );
}
