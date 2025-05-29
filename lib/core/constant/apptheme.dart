import 'package:flutter/material.dart';

import 'color.dart';

ThemeData themeEnglish =ThemeData(
  fontFamily: 'PlayfairDisplay',
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      color: AppColorApp.black,
      fontWeight: FontWeight.bold,
      fontSize: 20,
    ),
    bodyLarge: TextStyle(
      height: 2,
      color: AppColorApp.grey,
      fontWeight: FontWeight.bold,
      fontSize: 22
    ),
  ),
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),

);


ThemeData themeArabic=ThemeData(
  fontFamily: 'Cairo',
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      color: AppColorApp.black,
      fontWeight: FontWeight.bold,
      fontSize: 20,
    ),
    bodyLarge: TextStyle(
      height: 2,
      color: AppColorApp.grey,
      fontWeight: FontWeight.bold,
      fontSize: 22
    ),
  ),
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),

);