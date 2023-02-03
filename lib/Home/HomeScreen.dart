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
          title: Text('Islami'),
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
                label: 'Quran'),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/images/hadeth.png')),
                label: 'Hadeth'),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/images/sebha.png')),
                label: 'Sebha'),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/images/radio_blue.png')),
                label: 'Radio'),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: Icon(Icons.settings),
                label: 'Settings'),
          ],
        ),
        body: Tabs[SelectIndex],
      ),
    );
  }

  List<Widget> Tabs = [QuranTab(), HadethTab(), SebhaTab(), RadioTab(),SettingTab()];
}
