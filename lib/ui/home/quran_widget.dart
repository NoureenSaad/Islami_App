import 'package:eslami/ui/home/quran_title_widget.dart';
import 'package:flutter/material.dart';

class QuranWidget extends StatelessWidget {
  List<String> suraNames=[];
  List<String> versesNumber=[];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Image.asset("assets/images/qur2an_screen_logo.png")),
        Expanded(
          flex: 3,
          child: ListView.separated(
            padding: EdgeInsets.all(10),
              itemBuilder: (context,index){
                return QuranTitleWidget(title: suraNames[index], versesNumber: versesNumber[index].toString());
              },
              separatorBuilder: (context,index){
                return Container(
                  width: double.infinity,
                  height: 2,
                  color: Theme.of(context).colorScheme.primary,
                );
              },
            itemCount: suraNames.length,
          ),
        ),
      ],
    );
  }

}
