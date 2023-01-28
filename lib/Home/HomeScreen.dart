import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/Home/Hadeth/Hadeth_Tab.dart';
import 'package:islami_app/Home/Quran/Quran_Tab.dart';
import 'package:islami_app/Home/Radio/Radio_Tab.dart';
import 'package:islami_app/Home/Sebha/Sebha_Tab.dart';
import 'package:islami_app/My_Theme.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int SelectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/main_background.png'),
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
          ],
        ),
        body: Tabs[SelectIndex],
      ),
    );
  }

  List<Widget> Tabs = [QuranTab(), HadethTab(), SebhaTab(), RadioTab()];
}
