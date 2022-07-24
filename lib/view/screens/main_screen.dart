import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import '../../locale/locale.dart';

import '../../logic/controllers/main_controller.dart';
import '../../logic/controllers/onboarding_controller.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);
  final controller = Get.find<MyLocaleController>();

  final mainController = Get.find<MainController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(
        () {
          return Scaffold(
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


      /*
      
      
       Scaffold(
        backgroundColor: const Color.fromRGBO(241, 241, 245, 1),
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20)),
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
            child: BottomNavigationBar(
              backgroundColor: Colors.white,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: mainColor,
              unselectedItemColor: Colors.black,
              showUnselectedLabels: true,
              items: [
                BottomNavigationBarItem(
                  label: 'Home',
                  activeIcon: Icon(
                    Icons.home,
                    color: mainColor,
                  ),
                  icon: Icon(
                    Icons.home,
                    color: Get.isDarkMode ? Colors.white : Colors.black,
                  ),
                ),
                BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.shopping_cart,
                    color: mainColor,
                  ),
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Get.isDarkMode ? Colors.white : Colors.black,
                  ),
                  label: 'Cart',
                ),
                BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.favorite_border,
                    color: mainColor,
                  ),
                  icon: Icon(
                    Icons.favorite_border,
                    color: Get.isDarkMode ? Colors.white : Colors.black,
                  ),
                  label: 'Favorites',
                ),
                BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.settings_outlined,
                    color: mainColor,
                  ),
                  icon: Icon(
                    Icons.settings_outlined,
                    color: Get.isDarkMode ? Colors.white : Colors.black,
                  ),
                  label: 'Setting',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
*/