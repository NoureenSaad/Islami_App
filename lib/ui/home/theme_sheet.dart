import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../providers/settings_provider.dart';

class ThemeSheet extends StatefulWidget {
  const ThemeSheet({super.key});

  @override
  State<ThemeSheet> createState() => _ThemeSheetState();
}

class _ThemeSheetState extends State<ThemeSheet> {
  @override
  Widget build(BuildContext context) {
    SettingsProvider provider = Provider.of<SettingsProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          getSelectedItem(provider.theme == ThemeMode.dark?AppLocalizations.of(context)!.dark:AppLocalizations.of(context)!.light),
          const SizedBox(height: 15,),
          InkWell(
            onTap: (){
              Navigator.pop(context);
              provider.changeTheme(provider.theme == ThemeMode.dark?ThemeMode.light:ThemeMode.dark);
            },
            child: getUnselectedItem(provider.theme == ThemeMode.dark?AppLocalizations.of(context)!.light:AppLocalizations.of(context)!.dark)
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
