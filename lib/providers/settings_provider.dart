import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

// observable, subject, publisher
class SettingsProvider extends ChangeNotifier{
  late ThemeMode theme;
  String language = "ar";

  SettingsProvider({required bool isDarkTheme}){
    theme = isDarkTheme? ThemeMode.dark: ThemeMode.light;
  }

  void changeTheme(ThemeMode newTheme) async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if(theme == newTheme) return;
    if(theme == ThemeMode.dark){
      theme = newTheme;
      prefs.setBool("isDarkTheme",true);
    }
    else{
      theme = newTheme;
      prefs.setBool("isDarkTheme",false);
    }
    notifyListeners();
  }

  void changeLanguage(String newLanguage){
    if(language == newLanguage) return;
    language = newLanguage;
    notifyListeners();
  }

}