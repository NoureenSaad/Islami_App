import 'package:flutter/material.dart';

class QuranTitleWidget extends StatelessWidget {
  String title;
  String versesNumber;

  QuranTitleWidget({required this.title , required this.versesNumber});

  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: () {

      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(title),
          Text(versesNumber),
        ],
      ),
    );
  }
}
