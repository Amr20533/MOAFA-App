import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter/material.dart';

ThemeData get lightTheme => ThemeData(
  scaffoldBackgroundColor: Colors.white,
  cardTheme: CardThemeData(
    color: Colors.white
  ),
  textTheme: TextTheme(
    headlineLarge: TextStyle(
      fontSize: 38,
      fontFamily: 'BarlowSemiCondensed',
      fontWeight: FontWeight.w900,
    ),
    headlineMedium: TextStyle(
      fontSize: 36,
      fontFamily: 'BarlowSemiCondensed',
      fontWeight: FontWeight.w800,
    ),
    headlineSmall: TextStyle(
      fontSize: 34,
      fontFamily: 'BarlowSemiCondensed',
      fontWeight: FontWeight.w800,
    ),
    displayLarge: TextStyle(
      fontSize: 32,
      fontFamily: 'BarlowSemiCondensed',
      fontWeight: FontWeight.w900,
    ),
    displayMedium: TextStyle(
      fontSize: 30,
      fontFamily: 'BarlowSemiCondensed',
      fontWeight: FontWeight.w800,
    ),
    displaySmall: TextStyle(
      fontSize: 28,
      fontFamily: 'BarlowSemiCondensed',
      fontWeight: FontWeight.w800,
    ),
    bodyLarge: TextStyle(
      fontSize: 26,
      fontFamily: 'BarlowSemiCondensed',
      fontWeight: FontWeight.w800,
    ),
    bodyMedium: TextStyle(
      fontSize: 24,
      fontFamily: 'BarlowSemiCondensed',
      fontWeight: FontWeight.w700,
    ),
    bodySmall: TextStyle(
      fontSize: 22,
      fontFamily: 'BarlowSemiCondensed',
      fontWeight: FontWeight.w600,
    ),
    titleLarge: TextStyle(
      fontSize: 20,
      fontFamily: 'BarlowSemiCondensed',
      fontWeight: FontWeight.w500,
    ),
    titleMedium: TextStyle(
      fontSize: 18,
      fontFamily: 'BarlowSemiCondensed',
      fontWeight: FontWeight.w400,
    ),
    titleSmall: TextStyle(
      fontSize: 16,
      fontFamily: 'BarlowSemiCondensed',
      fontWeight: FontWeight.w300,
    ),
  ),

  appBarTheme: AppBarTheme(
    backgroundColor: MyStyles.cyanColor,
    centerTitle: true
  )
);