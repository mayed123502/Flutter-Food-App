import 'dart:io';

import 'package:ecommerce_app/main.dart';
import 'package:ecommerce_app/utils/my_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../services/settings_services.dart';
import '../../utils/sharPreferenceUtils .dart';

class SettingsController extends GetxController {
  var swithchThemwValue = false.obs;
  var langLocal = Get.deviceLocale?.languageCode.obs;
  var name = ''.obs;
  var image = ''.obs;
  var email = ''.obs;
  var phone = ''.obs;
  // late File file;
  var nameFromTextFild = ''.obs;
  final shaedpref = SharedPrefs.instance;

  late String futureImg;
  File file = File('');
  var shared = SharedPrefs.instance;
  @override
  void onInit() {
    super.onInit();

    name.value = shared.getString('name') ?? 'null';
    email.value = shared.getString('email') ?? 'null';
    phone.value = shared.getString('phone_number') ?? 'null';
    image.value = shared.getString('image') ?? 'null';
    swithchThemwValue.value = Get.isDarkMode ? true : false;
  }

  void choose() async {
    var image = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );
    file = File(image!.path);

    update();
  }

  void save() async {
    if (file != null) {
      ServicesApi.updateProfile(
              file: file,
              name: nameFromTextFild.value == ''
                  ? name.value
                  : nameFromTextFild.value)
          .then((value) {
        name.value = value.name!;
        image.value = value.image!;
      });
    }
  }
}
