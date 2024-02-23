import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/settings_provider.dart';

class LanguageSheet extends StatefulWidget {
  const LanguageSheet({super.key});

  @override
  State<LanguageSheet> createState() => _LanguageSheetState();
}

class _LanguageSheetState extends State<LanguageSheet> {
  @override
  Widget build(BuildContext context) {
    SettingsProvider provider = Provider.of<SettingsProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          getSelectedItem(provider.language == "ar"?"العربية":"English"),
          const SizedBox(height: 15,),
          InkWell(
            onTap: () async {
              Navigator.pop(context);
              await provider.changeLanguage(provider.language == "ar"?"en":"ar");
            },
            child: getUnselectedItem(provider.language == "ar"?"English":"العربية")
          ),
        ],
      ),
    );
  }

  Widget getSelectedItem(String selectedLanguage){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(selectedLanguage,style: Theme.of(context).textTheme.labelLarge),
        Icon(
          Icons.check,
          color: Theme.of(context).dividerColor,
        )
      ],
    );
  }

  Widget getUnselectedItem(String unselectedLanguage){
    return Text(unselectedLanguage,style: Theme.of(context).textTheme.labelSmall);
  }
}
