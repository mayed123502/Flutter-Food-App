import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../utils/sharPreferenceUtils .dart';

class MyLocaleController extends GetxController {
  void changeLang(String codeLang) {
    Locale locale = Locale(codeLang);
    SharedPrefs.instance.setString("curruntLang", codeLang);
    Get.updateLocale(locale);
  }
}
