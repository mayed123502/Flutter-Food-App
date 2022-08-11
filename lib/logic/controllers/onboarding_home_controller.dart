import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
class OnBoardingHomeController extends GetxController {
  var currentIndex = 0.obs;
  late Timer _timer;

  PageController pageController = PageController(
    initialPage: 0,
  );

  @override
  void onInit() {
    super.onInit();

    _timer = Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (currentIndex.value < 2) {
        currentIndex.value++;
      } else {
        currentIndex.value = 0;
      }
      if (pageController.hasClients) {
        pageController.animateToPage(
          currentIndex.value,
          duration: Duration(milliseconds: 350),
          curve: Curves.easeIn,
        );
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
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
