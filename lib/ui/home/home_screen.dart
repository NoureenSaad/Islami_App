import 'package:eslami/style/app_theme.dart';
import 'package:eslami/ui/home/hadeth_widget.dart';
import 'package:eslami/ui/home/quran_widget.dart';
import 'package:eslami/ui/home/radio_widget.dart';
import 'package:eslami/ui/home/sebha_widget.dart';
import 'package:eslami/ui/home/settings_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
          title: Text("إسلامي",style: TextStyle(fontSize: 35),),
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
              label: 'قرآن',
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              icon: ImageIcon(AssetImage("assets/images/icon_radio.png")),
              label: 'راديو',
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              icon: ImageIcon(AssetImage("assets/images/icon_sebha.png")),
              label: 'سبحة',
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              icon: ImageIcon(AssetImage("assets/images/icon_hadeth.png")),
              label: 'أحاديث',
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              icon: Icon(
                Icons.settings,
              ),
              label: 'إعدادات',
            ),
          ],
        ),

        body: navWidget[currentNavIndex],
      ),
    );
  }
}
