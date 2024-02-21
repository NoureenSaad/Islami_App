import 'package:flutter/material.dart';

// observable, subject, publisher
class SettingsProvider extends ChangeNotifier{
  ThemeMode theme = ThemeMode.light;
  String language = "ar";

  void changeTheme(ThemeMode newTheme){
    if(theme == newTheme) return;
    theme = newTheme;
    notifyListeners();
  }

  void changeLanguage(String newLanguage){
    if(language == newLanguage) return;
    language = newLanguage;
    notifyListeners();
  }

}