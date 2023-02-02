import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/Home/Hadeth/Hadth_data.dart';
import 'package:islami_app/Home/Hadeth_Details/Hadeth_Details_Screen.dart';
import 'package:islami_app/Home/SuraContent/SuraContent.dart';
import 'package:islami_app/Home/SuraContent/sura_content_args.dart';

class HadethTitles extends StatelessWidget {
  Hadeth_Data hadeth;
  HadethTitles(this.hadeth);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, HadethDetailsScreen.routeName,
        arguments: hadeth);



      },
      child: Container(
        
        padding: EdgeInsets.all(4),
        alignment: Alignment.center,
        child:
        Text(hadeth.title
          ,style: Theme.of(context).textTheme.headline6,),
      ),
    );
  }
}
