import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../utils/my_string.dart';
import '../utils/sharPreferenceUtils .dart';

class MyLocaleController extends GetxController {
  var langLocal = ene.obs;

  @override
  void onInit() async {
    super.onInit();

    langLocal.value = SharedPrefs.instance.getString("curruntLang")!;
  }

  void changeLang(String codeLang) {
    langLocal.value = codeLang;
    Locale locale = Locale(codeLang);
    SharedPrefs.instance.setString("curruntLang", codeLang);
    Get.updateLocale(locale);
  }
}
