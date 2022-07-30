import 'package:get/get.dart';

import '../controllers/profileSetting.dart';

class ProfileSettingBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(ProfileSettingController());
   }

}