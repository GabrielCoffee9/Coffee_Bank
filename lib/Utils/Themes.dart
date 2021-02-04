import 'package:flutter/material.dart';

class BankThemes {
  static final lightTheme = ThemeData(
      textTheme: TextTheme(bodyText2: TextStyle(color: Colors.brown[600])),
      buttonTheme: ButtonThemeData(
          buttonColor: Colors.brown[400], textTheme: ButtonTextTheme.primary),
      primaryColor: Colors.white,
      accentColor: Colors.brown);

  static final darkTheme = ThemeData(
      textTheme: TextTheme(bodyText2: TextStyle(color: Colors.white)),
      scaffoldBackgroundColor: Colors.brown[600],
      buttonTheme: ButtonThemeData(
          buttonColor: Colors.brown[400], textTheme: ButtonTextTheme.primary),
      primaryColor: Colors.brown[600]);
}
