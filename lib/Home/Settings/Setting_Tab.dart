import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ThemeBottomSheet.dart';

class SettingTab extends StatefulWidget {
  const SettingTab({Key? key}) : super(key: key);

  @override
  State<SettingTab> createState() => _SettingTabState();
}

class _SettingTabState extends State<SettingTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 45),
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Theme',style: Theme.of(context).textTheme.subtitle2,),
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
              child:Text('Dark',style: Theme.of(context).textTheme.headline4,),

            ),
          ),
          SizedBox(height: 25,),
          Text('Language',style: Theme.of(context).textTheme.subtitle2,),
          SizedBox(height: 12,),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border: Border.all(color:Theme.of(context).accentColor)
            ),
            child:Text('English',style: Theme.of(context).textTheme.headline4,),

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
}
