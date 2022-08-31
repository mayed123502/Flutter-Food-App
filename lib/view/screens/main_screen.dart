import 'package:ecommerce_app/logic/controllers/auth_controllers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import '../../locale/locale.dart';

import '../../logic/controllers/category_controller.dart';
import '../../logic/controllers/connection_manager_controller.dart';
import '../../logic/controllers/main_controller.dart';

import '../../utils/theme.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);
  final ConnectionManagerController _controller =
      Get.find<ConnectionManagerController>();
  final controller = Get.find<MyLocaleController>();

  final mainController = Get.find<MainController>();
  final categoryController = Get.find<CategoryController>();
  final authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    // HomeServices.viewHomeRestaurants;
// context.theme.appBarTheme

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
          systemNavigationBarColor:
              Theme.of(context).bottomNavigationBarTheme.backgroundColor!,
          statusBarColor: Theme.of(context).textTheme.headline2!.color),
    );
    return SafeArea(
      child: Obx(
        () {
          return _controller.connectionType.value == 1
              ? Scaffold(
                  body: PersistentTabView(
                    context,
                    controller: mainController.controller.value,
                    screens: mainController.tabs,
                    backgroundColor: Theme.of(context)
                        .bottomNavigationBarTheme
                        .backgroundColor!,
                    items: mainController.navBarsItems(),
                    confineInSafeArea: true,
                    handleAndroidBackButtonPress: true,
                    resizeToAvoidBottomInset: true,
                    stateManagement: true,
                    hideNavigationBarWhenKeyboardShows: true,
                    decoration: NavBarDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      colorBehindNavBar: Theme.of(context)
                          .bottomNavigationBarTheme
                          .backgroundColor!,
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
                )
              : Scaffold(
                
                  body: Center(
                    child: Lottie.asset('assets/lottie/no_connection.json',
                        width: 250.w, height: 250.h),
                  ),
                );
        },
      ),
    );
  }
}
