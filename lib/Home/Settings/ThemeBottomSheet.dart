import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/Setting_Provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ThemeBottomSheet extends StatefulWidget {
  const ThemeBottomSheet({Key? key}) : super(key: key);

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var settingProvider=Provider.of<SettingProvider>(context);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
             InkWell(
               onTap: (){
                 settingProvider.changethememode(ThemeMode.dark);
               },
                 child:settingProvider.isDarkMode()?
                 selectedItem(AppLocalizations.of(context)!.dark):unselectedItem(AppLocalizations.of(context)!.dark)),
            SizedBox(height:  12,),
            InkWell(
              onTap: (){
                settingProvider.changethememode(ThemeMode.light );
              },
                child:
                settingProvider.isDarkMode()?
            unselectedItem(AppLocalizations.of(context)!.light):selectedItem(AppLocalizations.of(context)!.light))

          ],
        ),
      ),
    );
  }

  Widget selectedItem(String title){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
            style: Theme.of(context)
                .textTheme
                .headline4
                ?.copyWith(color: Theme.of(context).accentColor)),
        Icon(
          Icons.check,
          color: Theme.of(context).accentColor,
        )
      ],
    );
  }

  Widget unselectedItem(String title){
    return Text(title, style: Theme.of(context).textTheme.headline4);
  }
}
