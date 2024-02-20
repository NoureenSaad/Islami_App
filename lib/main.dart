import 'package:eslami/style/app_theme.dart';
import 'package:eslami/ui/hadeth_details/hadeth_details_screen.dart';
import 'package:eslami/ui/home/home_screen.dart';
import 'package:eslami/ui/quran_details/quran_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Islamy",
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'), // Arabic
      ],
      locale: Locale("ar"),
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: AppTheme.isDark?ThemeMode.dark:ThemeMode.light,
      routes: {
        HomeScreen.route:(BuildContext context)=>HomeScreen(),
        QuranDetailsScreen.route:(_)=>QuranDetailsScreen(),
        HadethDetailsScreen.route:(_)=>HadethDetailsScreen(),
      },
      initialRoute: HomeScreen.route,
    );
  }
}
