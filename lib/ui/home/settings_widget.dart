import 'package:eslami/ui/home/language_sheet.dart';
import 'package:eslami/ui/home/theme_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../providers/settings_provider.dart';

class SettingsWidget extends StatefulWidget {
  const SettingsWidget({super.key});

  @override
  State<SettingsWidget> createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
  @override
  Widget build(BuildContext context) {
    SettingsProvider provider = Provider.of<SettingsProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            child: Text(AppLocalizations.of(context)!.language,style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),),
          ),
          SizedBox(height: 10,),
          InkWell(
            onTap: () {
              showLanguageBottomSheet();
            },
            child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(15)),
                border: Border.all(
                  color: Theme.of(context).colorScheme.primary,
                )
              ),
              child: Text(provider.language == "ar"?"العربية":"English",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).primaryColor,
              )),
            ),
          ),
          SizedBox(height: 15,),
          Container(
            width: double.infinity,
            child: Text(AppLocalizations.of(context)!.theme,style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),),
          ),
          SizedBox(height: 10,),
          InkWell(
            onTap: () {
              showThemeBottomSheet();
            },
            child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  border: Border.all(
                    color: Theme.of(context).colorScheme.primary,
                  )
              ),
              child: Text(provider.theme == ThemeMode.dark?AppLocalizations.of(context)!.dark:AppLocalizations.of(context)!.light,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).primaryColor,
              )),
            ),
          ),
        ],
      ),
    );
  }

  void showLanguageBottomSheet(){
    showModalBottomSheet(context: context, builder: (context){
      return LanguageSheet();
    });
  }

  void showThemeBottomSheet(){
      showModalBottomSheet(context: context, builder: (context){
        return ThemeSheet();
      });
  }
}
