import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../main.dart';

class ThemeController {

  final key = 'isDarkModes';

  saveThemeDataInBox(bool isDark) {
    shaedpref.setBool(key, isDark);
  }

  bool getThemeDataFromBox() {
    return shaedpref.getBool(key) ?? false;
  }

  ThemeMode get themeDataGet =>
      getThemeDataFromBox() ? ThemeMode.dark : ThemeMode.light;

  void changesTheme() {
    Get.changeThemeMode(
        getThemeDataFromBox() ? ThemeMode.light : ThemeMode.dark);
    saveThemeDataInBox(!getThemeDataFromBox());
  }
}
