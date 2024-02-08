import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppTheme extends ChangeNotifier{
static const THEME_STATUS = "THEMESTATUS";
  bool isDarkTheme = false;

  AppTheme() {
    getTheme(); 
  }

  ThemeMode get themeMode => isDarkTheme ? ThemeMode.dark : ThemeMode.light;

  void toggleTheme() {
    isDarkTheme = !isDarkTheme;
    setDarkTheme(isDarkTheme);
    notifyListeners();
  }

  Future<void> setDarkTheme(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(THEME_STATUS, value);
  }

  Future<void> getTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    isDarkTheme = prefs.getBool(THEME_STATUS) ?? false; // Update isDarkTheme
    notifyListeners();
  }
}


ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  textTheme: const TextTheme(
    titleMedium:TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold),
    titleSmall: TextStyle(color: Colors.black,fontSize: 12.0),
  ),

   useMaterial3: true,

);


ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  textTheme: const TextTheme(
    titleMedium:TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold),
    titleSmall: TextStyle(color: Colors.white,fontSize: 12.0),
  ),
   useMaterial3: true,
);




