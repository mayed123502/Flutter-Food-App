import 'dart:io';

import 'package:ecommerce_app/main.dart';
import 'package:ecommerce_app/routes/routes.dart';
import 'package:ecommerce_app/utils/my_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../services/auth_api.dart';
import '../../services/baseAPI.dart';
import '../../services/helper/handingdatacontroller.dart';
import '../../services/helper/statusrequest.dart';
import '../../services/settings_services.dart';
import '../../utils/sharPreferenceUtils .dart';
import '../../view/widgets/get_snackbar.dart';

class SettingsController extends GetxController {
  var swithchThemwValue = false.obs;
  var langLocal = Get.deviceLocale?.languageCode.obs;
  var name = ''.obs;
  var image = ''.obs;
  var email = ''.obs;
  var phone = ''.obs;
  var nameFromTextFild = ''.obs;
  final shaedpref = SharedPrefs.instance;

  late String futureImg;
  File file = File('');
  var shared = SharedPrefs.instance;

  bool loding = false;

  void startLoding() {
    loding = true;
    update();
  }

  void stopLoding() {
    loding = false;
    update();
  }

  @override
  void onInit() {
    super.onInit();
    // print(shared.getString('image'));
    var x = shared.getString('image') == 'null';
    name.value = shared.getString('name') ?? 'null';
    email.value = shared.getString('email') ?? 'null';
    phone.value = shared.getString('phone_number') ?? 'null';
    image.value = x ? 'null' : '${shared.getString('image')}';
    // print(x);
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
    if (file.path != '') {
      ServicesApi.updateProfile(
              file: file,
              name: nameFromTextFild.value == ''
                  ? name.value
                  : nameFromTextFild.value)
          .then((value) {
        print(value);
        name.value = value.name!;
        image.value = value.image!;
        nameFromTextFild.value = value.name!;
      });
    } else {
      ServicesApi.updateProfile(
              file: null,
              name: nameFromTextFild.value == ''
                  ? name.value
                  : nameFromTextFild.value)
          .then((value) {
        name.value = value.name!;
        image.value = value.image!;
        nameFromTextFild.value = value.name!;
      });
    }
  }

  void changePassword({
    required String old_password,
    required String password,
  }) async {
    startLoding();

    bool result = await AuthApi.changePassword(
        old_password: old_password, password: password);
    if (result == true) {
      GetSnackbar(supTitle: '', title: "Done.");

      stopLoding();
    } else {
      stopLoding();

      GetSnackbar(supTitle: '', title: "Oops! Something went wrong.");
    }
    update();
  }

  void logout() {
    AuthApi().logout();
    Get.toNamed(Routes.loginScreen);
    update();
  }
}
