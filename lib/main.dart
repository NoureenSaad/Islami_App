import 'package:eslami/providers/settings_provider.dart';
import 'package:eslami/style/app_theme.dart';
import 'package:eslami/ui/hadeth_details/hadeth_details_screen.dart';
import 'package:eslami/ui/home/home_screen.dart';
import 'package:eslami/ui/quran_details/quran_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var provider = SettingsProvider();
  await provider.loadSettings();
  runApp(ChangeNotifierProvider(
    create: (context)=> provider,
    child: MyApp()
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SettingsProvider provider = Provider.of<SettingsProvider>(context);
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
      locale: Locale(provider.language),
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: provider.theme,
      routes: {
        HomeScreen.route:(BuildContext context)=>HomeScreen(),
        QuranDetailsScreen.route:(_)=>QuranDetailsScreen(),
        HadethDetailsScreen.route:(_)=>HadethDetailsScreen(),
      },
      initialRoute: HomeScreen.route,
    );
  }
}
