import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/Home/Settings/Language_BottomSheet.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import '../../provider/Setting_Provider.dart';
import 'ThemeBottomSheet.dart';

class SettingTab extends StatefulWidget {
  const SettingTab({Key? key}) : super(key: key);

  @override
  State<SettingTab> createState() => _SettingTabState();
}

class _SettingTabState extends State<SettingTab> {
  @override
  Widget build(BuildContext context) {
    var settingProvider=Provider.of<SettingProvider>(context);
    return Container(
      margin: EdgeInsets.only(top: 45),
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(AppLocalizations.of(context)!.theme,style: Theme.of(context).textTheme.subtitle2,),
          SizedBox(height: 12,),
          InkWell(
            onTap: (){
              return ShowThemeBottomSheet();

            },
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border: Border.all(color:Theme.of(context).accentColor)
              ),
              child:Text(settingProvider.isDarkMode()?
                AppLocalizations.of(context)!.dark: AppLocalizations.of(context)!.light,style: Theme.of(context).textTheme.headline4,),

            ),
          ),
          SizedBox(height: 25,),
          Text(AppLocalizations.of(context)!.language,style: Theme.of(context).textTheme.subtitle2,),
          SizedBox(height: 12,),
          InkWell(
            onTap: (){
              return ShowLanguageBottomSheet();
            },
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color:Theme.of(context).accentColor)
              ),
              child:Text(settingProvider.currentLang=='en'?'English':'العربية',style: Theme.of(context).textTheme.headline4,),

            ),
          ),

        ],
      ),
    );
  }

  void ShowThemeBottomSheet(){
    showModalBottomSheet(context: context, builder: (buildContext){
      return ThemeBottomSheet();

    });

  }

  void ShowLanguageBottomSheet(){
    showModalBottomSheet(context: context, builder: (buildContext){
      return LanguageBottomSheet();

    });

  }
}
