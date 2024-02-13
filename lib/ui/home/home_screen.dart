import 'package:eslami/ui/home/hadeth_widget.dart';
import 'package:eslami/ui/home/quran_widget.dart';
import 'package:eslami/ui/home/radio_widget.dart';
import 'package:eslami/ui/home/sebha_widget.dart';
import 'package:flutter/material.dart';

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
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
      BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/default_bg.png"),
            fit: BoxFit.fill,
        )
      ),
      child: Scaffold(

        appBar: AppBar(
          title: Text("Islami"),
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
              label: 'Quran',
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              icon: ImageIcon(AssetImage("assets/images/icon_radio.png")),
              label: 'Radio',
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              icon: ImageIcon(AssetImage("assets/images/icon_sebha.png")),
              label: 'Sebha',
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              icon: ImageIcon(AssetImage("assets/images/icon_hadeth.png")),
              label: 'Hadeth',
            ),
          ],
        ),

        body: navWidget[currentNavIndex],
      ),
    );
  }
}
