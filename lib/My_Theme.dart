import 'package:flutter/material.dart';

class MyTheme {
  static const Color LightPrimary = Color(0xFFB7935F);
  static const Color DarkPrimary = Color(0xFF141A2E);

  static final ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      primaryColor: LightPrimary,
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(
          color: Colors.black
        ),
          color: Colors.transparent,
          elevation: 0,
          titleTextStyle: TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.w500)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          showSelectedLabels: true,
          showUnselectedLabels: false,
          selectedIconTheme: IconThemeData(size: 36, color: Colors.black),
          unselectedIconTheme: IconThemeData(size: 24, color: Colors.white),
          selectedLabelStyle: TextStyle(color: Colors.black),
          selectedItemColor: Colors.black));
  static final ThemeData DarkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      primaryColor: DarkPrimary,
      appBarTheme: const AppBarTheme(
          color: Colors.transparent,
          elevation: 0,
          titleTextStyle: TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.w500)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          showSelectedLabels: true,
          showUnselectedLabels: false,
          selectedIconTheme: IconThemeData(size: 36, color: Colors.black),
          unselectedIconTheme: IconThemeData(size: 24, color: Colors.white),
          selectedLabelStyle: TextStyle(color: Colors.black),
          selectedItemColor: Colors.black));
}
