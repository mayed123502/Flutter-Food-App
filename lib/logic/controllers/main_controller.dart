import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import '../../utils/theme.dart';
import '../../view/screens/cart/cart_screen.dart';
import '../../view/screens/favorites_screen.dart';
import '../../view/screens/home_screen.dart';
import '../../view/screens/settings/settings_screen.dart';

class MainController extends GetxController {
  // ignore: prefer_final_fields
  Rx<PersistentTabController> controller =
      PersistentTabController(initialIndex: 0).obs;
  var tabs = [
    HomeScreen(),
    CartScreen(),
    FavoritesScreen(),
    SettingsScreen(),
  ].obs;

  List<PersistentBottomNavBarItem> navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home_outlined),
        title: ("Home".tr),
        activeColorPrimary: mainColor,
        inactiveColorPrimary: Get.isDarkMode ? Colors.white : Colors.black,
        inactiveColorSecondary: Get.isDarkMode ? Colors.white : Colors.black,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(
          Icons.shopping_cart,
        ),
        title: ("Cart".tr),
        activeColorPrimary: mainColor,
        inactiveColorPrimary: Get.isDarkMode ? Colors.white : Colors.black,
        inactiveColorSecondary: Get.isDarkMode ? Colors.white : Colors.black,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(
          Icons.favorite_border,
        ),
        title: ("Favorites".tr),
        activeColorPrimary: mainColor,
        inactiveColorPrimary: Get.isDarkMode ? Colors.white : Colors.black,
        inactiveColorSecondary: Get.isDarkMode ? Colors.white : Colors.black,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(
          Icons.settings_outlined,
        ),
        title: ("Setting".tr),
        activeColorPrimary: mainColor,
        inactiveColorPrimary: Get.isDarkMode ? Colors.white : Colors.black,
        inactiveColorSecondary: Get.isDarkMode ? Colors.white : Colors.black,
      ),
    ];
  }
}
