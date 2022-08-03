import 'package:ecommerce_app/utils/sharPreferenceUtils%20.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../utils/my_string.dart';

class MyLocaleController extends GetxController {
  var langLocal = ene.obs;

  @override
  void onInit() async {
    super.onInit();

    langLocal.value = (SharedPrefs.instance.getString("curruntLang") != null?SharedPrefs.instance.getString("curruntLang"):Get.deviceLocale?.languageCode.toString())!;
  }

  void changeLang(String codeLang) {
    langLocal.value = codeLang;
    Locale locale = Locale(codeLang);
    SharedPrefs.instance.setString("curruntLang", codeLang);
    Get.updateLocale(locale);
  }
}
