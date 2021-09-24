import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'colors.dart';

class MyStyles {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColorBrightness: Brightness.light,
    primaryColor: MyColors.primary,
    colorScheme: const ColorScheme.light(
      primary: MyColors.primary,
      secondary: MyColors.primary,
    ),
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      color: Colors.white,
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      elevation: 0,
      foregroundColor: Colors.black,
      iconTheme: IconThemeData(color: Colors.black),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: MyColors.primary),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    primaryColorBrightness: Brightness.dark,
    primaryColor: MyColors.primary,
    colorScheme: const ColorScheme.dark(
      primary: MyColors.primary,
      secondary: MyColors.primary,
    ),
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      color: Colors.transparent,
      systemOverlayStyle: SystemUiOverlayStyle.light,
      elevation: 0,
      foregroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: MyColors.primary),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      elevation: 0,
    ),
  );
}
