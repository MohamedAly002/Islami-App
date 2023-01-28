import 'package:flutter/material.dart';
import 'package:islami_app/Home/HomeScreen.dart';
import 'package:islami_app/Home/SuraContent/SuraContent.dart';
import 'package:islami_app/My_Theme.dart';

void main() {
  runApp(MaterialApp(
    theme: MyTheme.lightTheme,
    title: 'Islami App',
    routes: {
      HomeScreen.routeName: (_) => HomeScreen(),
      SuraContent.routeName: (_) => SuraContent(),
    },
    initialRoute: HomeScreen.routeName,
  ));
}
