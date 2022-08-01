import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/sharPreferenceUtils .dart';

class ThemeController {

  final key = 'isDarkModes';

  saveThemeDataInBox(bool isDark) {
    SharedPrefs.instance.setBool(key, isDark);
  }

  bool getThemeDataFromBox() {
    return SharedPrefs.instance.getBool(key) ?? false;
  }

  ThemeMode get themeDataGet =>
      getThemeDataFromBox() ? ThemeMode.dark : ThemeMode.light;

  void changesTheme() {
    Get.changeThemeMode(
        getThemeDataFromBox() ? ThemeMode.light : ThemeMode.dark);
    saveThemeDataInBox(!getThemeDataFromBox());
  }
}
