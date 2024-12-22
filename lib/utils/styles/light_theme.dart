import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter/material.dart';

ThemeData get lightTheme => ThemeData(
  scaffoldBackgroundColor: Colors.white,
  cardTheme: CardThemeData(
    color: Colors.white
  ),
  textTheme: TextTheme(
    titleLarge: TextStyle(
      fontSize: 24,
      fontFamily: 'BarlowSemiCondensed',
      fontWeight: FontWeight.w800,
    ),
    titleMedium: TextStyle(
      fontSize: 24,
      fontFamily: 'BarlowSemiCondensed',
      fontWeight: FontWeight.w800,
    ),
  ),
);