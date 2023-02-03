import 'package:flutter/material.dart';

class SettingProvider extends ChangeNotifier{
  ThemeMode CurrentTheme=ThemeMode.light;
  String currentLang='en';
  void ChangeLang(String newLocal){
    currentLang=newLocal;
    notifyListeners();
  }

  void changethememode(ThemeMode newMode){
    CurrentTheme=newMode;
    notifyListeners();
  }
  String getMainBackgroundimage(){
    return CurrentTheme==ThemeMode.light?
    'assets/images/main_background.png'
        :'assets/images/main_background_dark.png';

  }
  bool isDarkMode(){
    return CurrentTheme==ThemeMode.dark;
  }
}