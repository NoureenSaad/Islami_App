import 'package:eslami/ui/home/home_screen.dart';
import 'package:eslami/ui/quran_details/quran_details_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Islami",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Color(0xffb7935f),
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          selectedIconTheme: IconThemeData(
            size: 35,
          ),
          unselectedIconTheme: IconThemeData(
            size: 25,
          )
        ),//the same theme in all application
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          )
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xffb7935f),
          primary: Color(0xffb7935f), //the main color in your app
          secondary: Color(0xffb7935f).withOpacity(0.57), //the second most used color
        ),
        useMaterial3: true,
      ),
      routes: {
        HomeScreen.route:(BuildContext context)=>HomeScreen(),
        QuranDetailsScreen.route:(_)=>QuranDetailsScreen(),
      },
      initialRoute: HomeScreen.route,
    );
  }
}
