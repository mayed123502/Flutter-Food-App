import 'package:get/get.dart';

import '../controllers/cart_controllers.dart';

class CartBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(CartController());
  }
}
