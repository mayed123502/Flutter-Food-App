import 'package:ecommerce_app/logic/controllers/auth_controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import '../../locale/locale.dart';

import '../../logic/controllers/category_controller.dart';
import '../../logic/controllers/main_controller.dart';
import '../../logic/controllers/onboarding_controller.dart';
import '../../main.dart';
import '../../utils/theme.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);
  final controller = Get.find<MyLocaleController>();

  final mainController = Get.find<MainController>();
  final categoryController = Get.find<CategoryController>();
  final authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    categoryController.viewRestaurants(pageIndex: 1, pagesize: 2);

// context.theme.appBarTheme
    return SafeArea(
      child: Obx(
        () {
          return Scaffold(
            backgroundColor: Get.isDarkMode
                ? ThemesApp.dark.backgroundColor
                : ThemesApp.dark.backgroundColor,
            body: PersistentTabView(
              context,
              controller: mainController.controller.value,
              screens: mainController.tabs,
              items: mainController.navBarsItems(),
              confineInSafeArea: true,
              backgroundColor: Colors.white,
              handleAndroidBackButtonPress: true,
              resizeToAvoidBottomInset: true,
              stateManagement: true,
              hideNavigationBarWhenKeyboardShows: true,
              decoration: NavBarDecoration(
                borderRadius: BorderRadius.circular(20.0),
                colorBehindNavBar: Colors.white,
              ),
              popAllScreensOnTapOfSelectedTab: true,
              popActionScreens: PopActionScreensType.all,
              itemAnimationProperties: const ItemAnimationProperties(
                duration: Duration(milliseconds: 200),
                curve: Curves.ease,
              ),
              screenTransitionAnimation: const ScreenTransitionAnimation(
                animateTabTransition: true,
                curve: Curves.ease,
                duration: Duration(milliseconds: 200),
              ),
              navBarStyle: NavBarStyle.style3,
            ),
          );
        },
      ),
    );
  }
}
