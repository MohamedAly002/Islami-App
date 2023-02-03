import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/Home/Hadeth/Hadeth_Tab.dart';
import 'package:islami_app/Home/Quran/Quran_Tab.dart';
import 'package:islami_app/Home/Radio/Radio_Tab.dart';
import 'package:islami_app/Home/Settings/Setting_Tab.dart';
import 'package:islami_app/My_Theme.dart';
import 'package:provider/provider.dart';
import '../provider/Setting_Provider.dart';
import 'Sebha/Sebha_Tab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int SelectIndex = 0;

  @override
  Widget build(BuildContext context) {
    var settingProvider=Provider.of<SettingProvider>(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(settingProvider.getMainBackgroundimage())

              ,
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.app_title),
          centerTitle: true,
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (slecteditem) {
            SelectIndex = slecteditem;
            setState(() {});
          },
          currentIndex: SelectIndex,
          items: [
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/images/moshaf_blue.png')),
                label: AppLocalizations.of(context)!.quran_icon),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/images/hadeth.png')),
                label: AppLocalizations.of(context)!.hadeth_icon),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/images/sebha.png')),
                label: AppLocalizations.of(context)!.sebha_icon),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/images/radio_blue.png')),
                label: AppLocalizations.of(context)!.radio_icon),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: Icon(Icons.settings),
                label: AppLocalizations.of(context)!.setting_icon),
          ],
        ),
        body: Tabs[SelectIndex],
      ),
    );
  }

  List<Widget> Tabs = [QuranTab(), HadethTab(), SebhaTab(), RadioTab(),SettingTab()];
}
