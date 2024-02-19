import 'package:eslami/ui/home/language_sheet.dart';
import 'package:eslami/ui/home/theme_sheet.dart';
import 'package:flutter/material.dart';

class SettingsWidget extends StatefulWidget {
  const SettingsWidget({super.key});

  @override
  State<SettingsWidget> createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Text("اللغة",style: TextStyle(
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
              child: Text("العربية",style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).primaryColor,
              )),
            ),
          ),
          SizedBox(height: 15,),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Text("المظهر",style: TextStyle(
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
              child: Text("داكن",style: Theme.of(context).textTheme.bodyMedium?.copyWith(
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
