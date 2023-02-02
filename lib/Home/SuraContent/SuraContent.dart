import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/Home/SuraContent/Verse_Widget.dart';
import 'package:islami_app/Home/SuraContent/sura_content_args.dart';
import 'package:provider/provider.dart';

import '../../provider/Setting_Provider.dart';

class SuraContent extends StatefulWidget {
  static const String routeName = 'suracontent';

  @override
  State<SuraContent> createState() => _SuraContentState();
}

class _SuraContentState extends State<SuraContent> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    SuraContentArgs arg =
        (ModalRoute.of(context)?.settings.arguments) as SuraContentArgs;
    if (verses.isEmpty) {
      readfiles(arg.index + 1);
    }
    var settingProvider=Provider.of<SettingProvider>(context);

    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(settingProvider.getMainBackgroundimage()),
                fit: BoxFit.fill)),
        child: Scaffold(
          appBar: AppBar(
            title: Text(arg.name),
            centerTitle: true,
           ),
          body: verses.isEmpty
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12)
            ),
                margin: EdgeInsets.only(top: 60,left: 9,right: 9,bottom: 10),
                elevation: 12,

                child: ListView.separated(
                    itemBuilder: (_, index) {
                      return VerseWidget(verses[index],index+1);
                    },
                    itemCount: verses.length,
                  separatorBuilder: (context,index){
                      return Container(
                        color: Theme.of(context).accentColor,
                        height: 1 ,
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(horizontal: 65),

                      );
                  } ,
                  ),
              ),
        ));
  }

  void readfiles(int fileindex) async {
    String FileContent =
        await rootBundle.loadString('assets/QuranFiles/$fileindex.txt');
    List<String> lines = FileContent.trim().split('\n');
    verses = lines;
    setState(() {});
  }
}
