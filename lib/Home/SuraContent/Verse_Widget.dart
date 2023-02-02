import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VerseWidget extends StatelessWidget {
  String content;
  int verseindex;
  VerseWidget(this.content,this.verseindex);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 8),

      child: Text('$content [$verseindex]',
        textDirection: TextDirection.rtl,
        textAlign: TextAlign.center,
        style:Theme.of(context).textTheme.headline6,),
    );
  }
}
