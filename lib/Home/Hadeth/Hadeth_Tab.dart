import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/Home/Hadeth/Hadeth_titles.dart';
import 'package:islami_app/Home/Hadeth/Hadth_data.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth_Data>allHadethList=[];

  @override
  Widget build(BuildContext context) {
    if(allHadethList.isEmpty)
      readhadeathfile();


    readhadeathfile();
    return Container(
      child: Column(
        children: [
          Image.asset('assets/images/hadethpictab.png'),
          Expanded(
            child: Container(
              child: ListView.separated(itemBuilder: (_,index){
                return HadethTitles(allHadethList[index]);
              },itemCount: allHadethList.length,
                separatorBuilder: (_, index) {
                  return Container(
                    color: Theme.of(context).accentColor,
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 75),
                    height: 1,
                  );
                },
              ),
            ),
          ),

        ],
      )

    );

  }

  void readhadeathfile()async{
    List<Hadeth_Data>HadethList=[];
  String content =await rootBundle.loadString('assets/hadeth/ahadeth .txt');
  List<String>hadethcontent=content.split('#');

  for(int i=0;i<hadethcontent.length;i++){

      String singleHadeth=  hadethcontent[i].trim();
      int IndexOfFirstLine=singleHadeth.indexOf('\n');

      String title= singleHadeth.substring(0,IndexOfFirstLine);
      String content =singleHadeth.substring(IndexOfFirstLine+1);
      Hadeth_Data h=Hadeth_Data(title, content);
      HadethList.add(h);

  }
    allHadethList=HadethList;
  setState(() {});
    print(allHadethList);

  }
}
