import 'package:flutter/material.dart';

class AppTheme{
  static bool isDark = false;

  static Color lightPrimary = Color(0xffb7935f);
  static Color lightSecondary = Color(0xffb7935f).withOpacity(0.57);

  static Color darkPrimary = Color(0xff141A2E);
  static Color darkSecondary = Color(0xffFACC1D);

  static ThemeData lightTheme = ThemeData(
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        selectedIconTheme: IconThemeData(
          size: 35,
        ),
        unselectedIconTheme: IconThemeData(
          size: 25,
        )
    ),//the same theme in all application
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontFamily: 'Amiri',
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        )
    ),
    colorScheme: ColorScheme.fromSeed(seedColor: Color(0xffb7935f),
      primary: lightPrimary, //the main color in your app
      secondary: lightSecondary, //the second most used color
    ),
    textTheme: TextTheme(
        titleLarge: TextStyle(
          fontFamily: 'Amiri',
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: Colors.black,
        ),
        labelMedium: TextStyle(
          fontFamily: 'Amiri',
          color: Colors.black,
          fontSize: 25,
          fontWeight: FontWeight.w700,
        ),
        bodyMedium: TextStyle(
            fontFamily: 'Amiri',
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w400
        ),
      labelSmall: TextStyle(
          fontFamily: 'Amiri',
        color: Colors.black,
        fontSize: 16
      ),
      labelLarge: TextStyle(
          fontFamily: 'Amiri',
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: lightPrimary
      ),
        titleMedium: TextStyle(
            fontFamily: 'Amiri',
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold
        )
    ),
    cardTheme: CardTheme(
      color: Colors.white,
      margin: EdgeInsets.all(30),
      elevation: 10,
      surfaceTintColor: Colors.transparent
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: Colors.white,
    ),
    dividerColor: lightPrimary,
    useMaterial3: true,
  );

  static ThemeData darkTheme = ThemeData(
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: Colors.yellowAccent,
        unselectedItemColor: Colors.white,
        selectedIconTheme: IconThemeData(
          size: 35,
        ),
        unselectedIconTheme: IconThemeData(
          size: 25,
        )
    ),//the same theme in all application
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontFamily: 'Amiri',
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        )
    ),
    colorScheme: ColorScheme.fromSeed(seedColor: Color(0xffb7935f),
      primary: darkPrimary, //the main color in your app
      secondary: darkSecondary, //the second most used color
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontFamily: 'Amiri',
        fontSize: 25,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      labelMedium: TextStyle(
        fontFamily: 'Amiri',
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.w700,
      ),
      bodyMedium: TextStyle(
        fontFamily: 'Amiri',
        color: darkSecondary,
        fontSize: 20,
        fontWeight: FontWeight.w400
      ),
        labelSmall: TextStyle(
            fontFamily: 'Amiri',
            color: Colors.white,
            fontSize: 16
        ),
        labelLarge: TextStyle(
            fontFamily: 'Amiri',
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: darkSecondary
        ),
      titleMedium: TextStyle(
          fontFamily: 'Amiri',
        color: Colors.black,
        fontSize: 25,
        fontWeight: FontWeight.bold
      )
    ),
    cardTheme: CardTheme(
        color: darkPrimary,
        margin: EdgeInsets.all(30),
        elevation: 10,
        surfaceTintColor: Colors.transparent
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: darkPrimary,
    ),
    dividerColor: darkSecondary,
    useMaterial3: true,
  );
}