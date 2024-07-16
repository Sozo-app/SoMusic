import 'package:flutter/material.dart';

import 'colors.dart';

var lightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: const ColorScheme.light(
    brightness: Brightness.light,
    primary: lPrimaryColor,
    onPrimary: lOnPrimaryColor,
    secondary: lSecondaryColor,
    onSecondary: lOnSecondaryColor,
    background: lBackgroundColor,
    onBackground: lTextColor,
    onSecondaryContainer: lCustomColor,
    onSurface: lBottomNavbarColor,
  ),
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: lPrimaryColor,
      fontFamily: "Poppins",
    ),
    headlineMedium: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w500,
      color: lTextColor,
      fontFamily: "Poppins",
    ),
    labelLarge: TextStyle(
      fontSize: 16,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
      color: lTextColor,
    ),
    labelMedium: TextStyle(
      fontSize: 14,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
      color: lTextColor,
    ),
    labelSmall: TextStyle(
      fontSize: 12,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
      color: lCustomColor,
    ),
  ),
);

var darkTheme = ThemeData(
  useMaterial3: true,
  appBarTheme: const AppBarTheme(
    backgroundColor: dSecondaryColor,
  ),
  colorScheme: const ColorScheme.dark(
    brightness: Brightness.dark,
    primary: dPrimaryColor,
    onPrimary: dOnPrimaryColor,
    secondary: dSecondaryColor,
    onSecondary: dOnSecondaryColor,
    background: dBackgroundColor,
    onBackground: dTextColor,
    onSecondaryContainer: dCustomColor,
    onSurface: dBottomNavbarColor,
  ),
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: dPrimaryColor,
      fontFamily: "Poppins",
    ),
    headlineMedium: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w500,
      color: dTextColor,
      fontFamily: "Poppins",
    ),
    labelLarge: TextStyle(
      fontSize: 16,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
      color: dTextColor,
    ),
    labelMedium: TextStyle(
      fontSize: 14,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
      color: dTextColor,
    ),
    labelSmall: TextStyle(
      fontSize: 12,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
      color: dCustomColor,
    ),
  ),
);
