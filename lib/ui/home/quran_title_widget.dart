import 'package:eslami/ui/quran_details/quran_details_screen.dart';
import 'package:flutter/material.dart';

class QuranTitleWidget extends StatelessWidget {
  String title;
  String versesNumber;
  int index;

  QuranTitleWidget({required this.title , required this.versesNumber,required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, QuranDetailsScreen.route, arguments: QuranDetailsArgs(title: title, index: index));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(title,style: TextStyle(fontSize: 24),),
          Text(versesNumber,style: TextStyle(fontSize: 24)),
        ],
      ),
    );
  }
}