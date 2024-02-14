import 'package:eslami/ui/hadeth_details/hadeth_details_screen.dart';
import 'package:eslami/ui/home/hadeth_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HadethTitleWidget extends StatelessWidget {
  HadethModel hadethModel;
  HadethTitleWidget({super.key, required this.hadethModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, HadethDetailsScreen.route, arguments: hadethModel);
      },
      child: Text(
        "${hadethModel.hadethTitle}",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 24,
        ),
      ),
    );
  }
}
