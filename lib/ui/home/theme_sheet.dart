import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ThemeSheet extends StatefulWidget {
  const ThemeSheet({super.key});

  @override
  State<ThemeSheet> createState() => _ThemeSheetState();
}

class _ThemeSheetState extends State<ThemeSheet> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          getSelectedItem(AppLocalizations.of(context)!.dark),
          const SizedBox(height: 15,),
          getUnselectedItem(AppLocalizations.of(context)!.light),
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
