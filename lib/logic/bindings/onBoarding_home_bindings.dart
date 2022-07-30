// ignore_for_file: file_names

import 'package:get/get.dart';

import '../controllers/onboarding_home_controller.dart';

class OnBoardingHomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(OnBoardingHomeController());
   }

}