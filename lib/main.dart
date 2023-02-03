import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami_app/Home/Hadeth_Details/Hadeth_Details_Screen.dart';
import 'package:islami_app/Home/HomeScreen.dart';
import 'package:islami_app/Home/SuraContent/SuraContent.dart';
import 'package:islami_app/My_Theme.dart';
import 'package:islami_app/provider/Setting_Provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
void main() {
runApp( ChangeNotifierProvider(
    create: (buildContext)=>SettingProvider(),

    child: MyApplication()));

}


class MyApplication extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var settingProvider=Provider.of<SettingProvider>(context);

    return MaterialApp(

      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'), // Arabic
      ],

        theme: MyTheme.lightTheme,
        darkTheme: MyTheme.DarkTheme,
        themeMode:settingProvider.CurrentTheme ,
        title: 'Islami App',
        locale: Locale(settingProvider.currentLang),
        routes: {
          HomeScreen.routeName: (_) => HomeScreen(),
          SuraContent.routeName: (_) => SuraContent(),
          HadethDetailsScreen.routeName: (_) => HadethDetailsScreen(),
        },
        initialRoute: HomeScreen.routeName,
      );
  }
}
