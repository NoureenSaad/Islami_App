import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../../providers/settings_provider.dart';
import '../../style/app_theme.dart';

class QuranDetailsScreen extends StatefulWidget {
  static const String route = "quran_details";

  @override
  State<QuranDetailsScreen> createState() => _QuranDetailsScreenState();
}

class _QuranDetailsScreenState extends State<QuranDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    SettingsProvider provider = Provider.of<SettingsProvider>(context);
    QuranDetailsArgs args = ModalRoute.of(context)?.settings.arguments as QuranDetailsArgs;
    if(lines.isEmpty){   //Nonblocking code
      loadQuranFile(args.index);
    }
    return Container(
      decoration:
      BoxDecoration(
          image: DecorationImage(
            image: AssetImage(provider.theme == ThemeMode.dark?"assets/images/dark_bg.png":"assets/images/default_bg.png"),
            fit: BoxFit.fill,
          )
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.title),
        ),
        body: Card(
          child: lines.isEmpty?
            Center(child: CircularProgressIndicator(),)
            : Container(
              margin: EdgeInsets.all(10),
              child: ListView.separated(
                itemBuilder: (context,index)=>Text(
                  "${lines[index]}(${index+1})",
                  textDirection: TextDirection.rtl,
                  style: Theme.of(context).textTheme.bodyMedium),
                  separatorBuilder: (context,index)=>Container(
                    height: 6,
                    color: Colors.transparent,
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