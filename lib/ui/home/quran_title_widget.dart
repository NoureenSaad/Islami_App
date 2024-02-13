import 'package:flutter/material.dart';

class QuranTitleWidget extends StatelessWidget {
  String title;
  String versesNumber;

  QuranTitleWidget({required this.title , required this.versesNumber});

  @override
  Widget build(BuildContext context) {

    return InkWell(
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
