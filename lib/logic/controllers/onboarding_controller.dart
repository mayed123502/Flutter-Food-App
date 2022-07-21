import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
class OnBoardingController extends GetxController {
  var currentIndex = 0.obs;
  late PageController pageController;
  next() {
    currentIndex.value++;
    pageController.animateToPage(currentIndex.value,
        duration: Duration(microseconds: 900), curve: Curves.easeInOut);
  }

  onPageChanged(int index) {
    currentIndex.value = index;
  }

  @override
  void onInit() {
    // TODO: implement onInit
    pageController = PageController();
    super.onInit();
  }
}
