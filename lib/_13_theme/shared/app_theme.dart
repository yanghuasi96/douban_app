import 'package:flutter/material.dart';

class HYAppTheme {
  static const double smallFontSize = 16;
  static const double normalFontSize = 22;
  static const double largeFontSize = 24;

  static final Color norTextColors = Colors.red;
  static final Color darkTextColors = Colors.green;


  static final ThemeData norTheme = ThemeData(
    primarySwatch: Colors.yellow,
    textTheme: TextTheme(
        bodyText1: TextStyle(fontSize: normalFontSize, color: norTextColors)
    )
  );

  static final ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.grey,
    textTheme: TextTheme(
        bodyText1: TextStyle(fontSize: normalFontSize, color: darkTextColors)
    )
  );
}