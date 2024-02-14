import 'package:eslami/ui/home/hadeth_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String route = "hadeth_details";
  const HadethDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HadethModel hadethModel = ModalRoute.of(context)?.settings.arguments as HadethModel;

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
          title: Text(hadethModel.hadethTitle,style: TextStyle(fontSize: 35),),
        ),
        body: Card(
          margin: EdgeInsets.all(30),
          elevation: 10,
          child: SingleChildScrollView(
            child: Text(
              textDirection: TextDirection.rtl,
              "${hadethModel.hadethContent}",
              style: TextStyle(fontSize: 20),
            ),
          ),
          ),
        ),
      );
  }
}
