import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
class OnBoardingController extends GetxController {
  var currentIndex = 0.obs;
  late PageController pageController;
  @override
  void onInit() {
    pageController = PageController();
  }

  next() {
    currentIndex.value++;
    pageController.animateToPage(currentIndex.value,
        duration: Duration(microseconds: 900), curve: Curves.easeInOut);
  }

  @override
  void onClose() {
    currentIndex.value = 0;
    super.onClose();
  }

  onPageChanged(int index) {
    currentIndex.value = index;
  }
}
