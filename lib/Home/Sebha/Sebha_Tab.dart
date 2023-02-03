import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/Setting_Provider.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  double angle = 0;
  int tasbeh_count = 0;
  List<String> Tasbeh_items = [
    'سبحان الله',
    'الحمد لله',
    'لا اله الا الله',
    'الله اكبر',
  ];
  int tasbeh_index = 0;
  @override
  Widget build(BuildContext context) {
    var settingProvider = Provider.of<SettingProvider>(context);

    var mediaQuery = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 15,
          ),
          Container(
            height: mediaQuery.height * 0.36,
            child: Stack(
              children: [
                Positioned(
                  child: Image.asset(
                    settingProvider.isDarkMode()
                        ? 'assets/images/head_seb7a_dark.png'
                        : 'assets/images/head_seb7a.png',
                    height: mediaQuery.height * 0.11,
                  ),
                  left: mediaQuery.width * 0.49,
                ),
                Positioned(
                  top: 61,
                  left: mediaQuery.width * 0.24,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        angle--;
                        tasbeh_count++;
                        ChangeTasbehItems();
                      });
                    },
                    child: Transform.rotate(
                      angle: angle,
                      child: Image.asset(settingProvider.isDarkMode()
                          ? 'assets/images/body_seb7a_dark.png'
                          : 'assets/images/body_seb7a.png',
                          height: mediaQuery.height * 0.28),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'عدد التسبيحات',
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(12)),
              padding: EdgeInsets.all(20),
              child: Text(
                '$tasbeh_count',
                style: Theme.of(context).textTheme.headline6,
              )),
          SizedBox(
            height: 18,
          ),
          Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.circular(16)),
              padding: EdgeInsets.all(15),
              child: Text(
                '${Tasbeh_items[tasbeh_index]}',
                style: Theme.of(context).textTheme.headline5,
              )),
        ],
      ),
    );
  }

  void ChangeTasbehItems() {
    if (tasbeh_count == 33) {
      tasbeh_count = 0;
      tasbeh_index++;
      if (tasbeh_index == 4) {
        tasbeh_index = 0;
      }
    }
    setState(() {});
  }
}
