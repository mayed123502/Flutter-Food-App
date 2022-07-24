// ignore_for_file: file_names

import 'package:get/get.dart';

import '../controllers/onboarding_controller.dart';

class OnBoardingBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(OnBoardingController());
   }

}