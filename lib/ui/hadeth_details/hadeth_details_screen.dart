import 'package:eslami/ui/home/hadeth_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/settings_provider.dart';
import '../../style/app_theme.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String route = "hadeth_details";
  const HadethDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsProvider provider = Provider.of<SettingsProvider>(context);
    HadethModel hadethModel = ModalRoute.of(context)?.settings.arguments as HadethModel;

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
          title: Text(hadethModel.hadethTitle),
        ),
        body: Card(
          child: SingleChildScrollView(
            child: Text(
              textDirection: TextDirection.rtl,
              "${hadethModel.hadethContent}",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          ),
        ),
      );
  }
}
