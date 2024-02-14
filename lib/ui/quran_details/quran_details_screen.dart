import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class QuranDetailsScreen extends StatefulWidget {
  static const String route = "quran_details";

  @override
  State<QuranDetailsScreen> createState() => _QuranDetailsScreenState();
}

class _QuranDetailsScreenState extends State<QuranDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    QuranDetailsArgs args = ModalRoute.of(context)?.settings.arguments as QuranDetailsArgs;
    if(lines.isEmpty){   //Nonblocking code
      loadQuranFile(args.index);
    }
    return Container(
      decoration:
      BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/default_bg.png"),
            fit: BoxFit.fill,
          )
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.title,style: TextStyle(fontSize: 35),),
        ),
        body: Card(
          margin: EdgeInsets.all(30),
          elevation: 10,
          child: lines.isEmpty?
            Center(child: CircularProgressIndicator(),)
            : Container(
              margin: EdgeInsets.all(10),
              child: ListView.separated(
                itemBuilder: (context,index)=>Text(
                  "${lines[index]}(${index+1})",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(color: Colors.black,fontSize: 20),),

                  separatorBuilder: (context,index)=>Container(
                    height: 2,
                    color: Theme.of(context).colorScheme.primary,
                  ),

                  itemCount: lines.length),
            ),
        ),
      ),
    );
  }

  List<String> lines = [];

  void loadQuranFile(int index) async{
    String quranText = await rootBundle.loadString("assets/files/${index+1}.txt");
    lines = quranText.split("\n");
    setState(() {

    });
  }
}

class QuranDetailsArgs{
  String title;
  int index;
  QuranDetailsArgs({required this.title,required this.index});
}