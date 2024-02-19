import 'package:flutter/material.dart';

class LanguageSheet extends StatefulWidget {
  const LanguageSheet({super.key});

  @override
  State<LanguageSheet> createState() => _LanguageSheetState();
}

class _LanguageSheetState extends State<LanguageSheet> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          getSelectedItem("العربية"),
          const SizedBox(height: 15,),
          getUnselectedItem("English"),
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
