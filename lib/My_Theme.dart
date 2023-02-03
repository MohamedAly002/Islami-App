import 'package:flutter/material.dart';

class MyTheme {
  static const Color LightPrimary = Color(0xFFB7935F);
  static const Color DarkPrimary = Color(0xFF141A2E);
  static const Color darktext = Color(0xFFFACC1D);

  static final ThemeData lightTheme = ThemeData(
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only( 
          topLeft: Radius.circular(18),
          topRight: Radius.circular(18)
        )
    )
    ),
    cardColor: Colors.white,
    accentColor: LightPrimary,
      textTheme: TextTheme(
        headline4: TextStyle(
          fontSize: 22,
          color: Colors.black
        ),
        headline6: TextStyle(
          fontSize: 28,
          color: Colors.black,
        ),
        subtitle2: TextStyle(
            fontSize: 18,
            color: Colors.black
        ),
        headline5: TextStyle(
          fontSize: 28,
          color: Colors.black,
        ),
      ),
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
      bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: DarkPrimary,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(18),
                  topRight: Radius.circular(18)
              )
          )
      ),
      cardColor: DarkPrimary,

      accentColor: darktext,
    textTheme: TextTheme(
      headline4: TextStyle(
        fontSize: 22,
        color: Colors.white,
      ),
      headline6: TextStyle(
        fontSize: 28,
        color: Colors.white,
      ),
      subtitle2: TextStyle(
        fontSize: 18,
            color: Colors.white
      ),
      headline5: TextStyle(
        fontSize: 28,
        color: Colors.black,
      ),
    ),
      scaffoldBackgroundColor: Colors.transparent,
      primaryColor: DarkPrimary,
      appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(
              color: Colors.white
          ),
          color: Colors.transparent,
          elevation: 0,
          titleTextStyle: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.w500)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          showSelectedLabels: true,
          showUnselectedLabels: false,
          selectedIconTheme: IconThemeData(size: 36, color:darktext),
          unselectedIconTheme: IconThemeData(size: 24, color: Colors.white),
          selectedLabelStyle: TextStyle(color:darktext),
          selectedItemColor:darktext));
}
