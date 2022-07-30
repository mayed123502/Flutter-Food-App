import 'package:get/get.dart';

class ProfileSettingController extends GetxController {
  var enabled = false.obs;

  void ChangeEnabled() {
    enabled.value = !enabled.value;
  }
}
