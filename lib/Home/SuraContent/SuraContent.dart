import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/Home/SuraContent/sura_content_args.dart';

class SuraContent extends StatelessWidget {
  static const String routeName = 'suracontent';
  @override
  Widget build(BuildContext context) {
    SuraContentArgs arg=(ModalRoute.of(context)?.settings.arguments)as SuraContentArgs;
    return Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage('assets/images/main_background.png'),
    fit: BoxFit.fill)),
    child: Scaffold(
        appBar: AppBar(
          title: Text(arg.name),
          centerTitle: true,
        ),

    )
    );
  }
}
