import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/Home/SuraContent/SuraContent.dart';
import 'package:islami_app/Home/SuraContent/sura_content_args.dart';

class QuranTitles extends StatelessWidget {
  String title;
  int index;
QuranTitles(this.title,this.index);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, SuraContent.routeName,
        arguments: SuraContentArgs(name: title, index:index ));

      },
      child: Container(
        
        padding: EdgeInsets.all(4),
        alignment: Alignment.center,
        child: Text(title,style: TextStyle(fontSize: 28),),
      ),
    );
  }
}
