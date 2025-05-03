import 'package:flutter/material.dart';
import 'package:news_api_app/Config/colors.dart';

final ThemeData lightTheme = ThemeData.from(
  colorScheme: ColorScheme(
    primaryContainer: const Color.fromARGB(255, 73, 205, 228),
    brightness: Brightness.light,
    primary: primaryColor,
    onPrimary: Colors.white,
    secondary: secondaryColor,
    onSecondary: Colors.white,
    background: lightBackgroundColor,
    onBackground: lightTextPrimaryColor,
    surface: lightSurfaceColor,
    onSurface: lightTextPrimaryColor,
    error: errorColor,
    onError: Colors.white,
  ),
).copyWith(
  scaffoldBackgroundColor: lightBackgroundColor,
  appBarTheme: AppBarTheme(
    backgroundColor: primaryColor,
    foregroundColor: Colors.white,
    elevation: 0,
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: lightSurfaceColor,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: lightBorderColor),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: lightBorderColor),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: primaryColor),
    ),
  ),
);

final ThemeData darkTheme = ThemeData.from(
  colorScheme: ColorScheme(
    primaryContainer: const Color.fromARGB(190, 48, 3, 3),
    brightness: Brightness.dark,
    primary: primaryColor,
    onPrimary: Colors.white,
    secondary: secondaryColor,
    onSecondary: Colors.white,
    background: darkBackgroundColor,
    onBackground: darkTextPrimaryColor,
    surface: darkSurfaceColor,
    onSurface: darkTextPrimaryColor,
    error: errorColor,
    onError: Colors.black,
  ),
).copyWith(
  scaffoldBackgroundColor: darkBackgroundColor,
  appBarTheme: AppBarTheme(
    backgroundColor: darkSurfaceColor,
    foregroundColor: Colors.white,
    elevation: 0,
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: darkSurfaceColor,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: darkBorderColor),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: darkBorderColor),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: primaryColor),
    ),
  ),
);
