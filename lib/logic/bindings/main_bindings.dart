import 'package:ecommerce_app/logic/controllers/cart_controllers.dart';
import 'package:get/get.dart';

import '../controllers/main_controller.dart';
import '../controllers/settings_controller.dart';

class MainBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(CartController());
    Get.put(SettingsController());

    Get.put(MainController());
  }
}
