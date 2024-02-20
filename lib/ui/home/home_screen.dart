import 'package:eslami/style/app_theme.dart';
import 'package:eslami/ui/home/hadeth_widget.dart';
import 'package:eslami/ui/home/quran_widget.dart';
import 'package:eslami/ui/home/radio_widget.dart';
import 'package:eslami/ui/home/sebha_widget.dart';
import 'package:eslami/ui/home/settings_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  static const String route = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentNavIndex = 0;
  List<Widget> navWidget=[
    QuranWidget(),
    RadioWidget(),
    SebhaWidget(),
    HadethWidget(),
    SettingsWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
      BoxDecoration(
        image: DecorationImage(
            image: AssetImage(AppTheme.isDark?"assets/images/dark_bg.png":"assets/images/default_bg.png"),
            fit: BoxFit.fill,
        )
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.islamy,style: TextStyle(fontSize: 35),),
        ),

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentNavIndex,
          onTap: (index){
            setState(() {
              currentNavIndex=index;
            });
          },
          items: [
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              icon: ImageIcon(AssetImage("assets/images/icon_quran.png")),
              label: AppLocalizations.of(context)!.quran,
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              icon: ImageIcon(AssetImage("assets/images/icon_radio.png")),
              label: AppLocalizations.of(context)!.radio,
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              icon: ImageIcon(AssetImage("assets/images/icon_sebha.png")),
              label: AppLocalizations.of(context)!.sebha,
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              icon: ImageIcon(AssetImage("assets/images/icon_hadeth.png")),
              label: AppLocalizations.of(context)!.ahadeth,
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              icon: Icon(
                Icons.settings,
              ),
              label: AppLocalizations.of(context)!.settings,
            ),
          ],
        ),

        body: navWidget[currentNavIndex],
      ),
    );
  }
}
