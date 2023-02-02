import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/Home/Hadeth/Hadth_data.dart';
import 'package:provider/provider.dart';

import '../../provider/Setting_Provider.dart';

class HadethDetailsScreen extends StatelessWidget {
static const String routeName='HadethDetailsScreen';
@override
Widget build(BuildContext context) {
  var args=ModalRoute.of(context)?.settings.arguments as Hadeth_Data;
  var settingProvider=Provider.of<SettingProvider>(context);

  return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(settingProvider.getMainBackgroundimage()),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.title),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)
                ),
                margin: EdgeInsets.only(top: 60,left: 9,right: 9,bottom: 10),
                elevation: 12,

                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(args.content,style: Theme.of(context).textTheme.headline6,
                    textDirection: TextDirection.rtl,),
                  ),
                )
              ),
            ),
          ],
        ),
      ));
}
  }

