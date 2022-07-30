import 'package:ecommerce_app/main.dart';
import 'package:ecommerce_app/utils/my_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/sharPreferenceUtils .dart';

class SettingsController extends GetxController {
  var swithchThemwValue = false.obs;
  var langLocal = Get.deviceLocale?.languageCode.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    swithchThemwValue.value = Get.isDarkMode ? true : false;
  }
}
