import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/Setting_Provider.dart';

class LanguageBottomSheet extends StatefulWidget {
  const LanguageBottomSheet({Key? key}) : super(key: key);

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var settingProvider = Provider.of<SettingProvider>(context);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            InkWell(onTap: () {
              settingProvider.ChangeLang('en');
            }, child:settingProvider.currentLang=='en'?
            selectedItem('English'):unselectedItem('English')
            ),
            SizedBox(
              height: 12,
            ),
            InkWell(onTap: () {
              settingProvider.ChangeLang('ar');
            }, child: settingProvider.currentLang=='ar'?
            selectedItem('العربية'):unselectedItem('العربية')
            )
          ],
        ),
      ),
    );
  }

  Widget selectedItem(String title) {
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

  Widget unselectedItem(String title) {
    return Text(title, style: Theme.of(context).textTheme.headline4);
  }
}
