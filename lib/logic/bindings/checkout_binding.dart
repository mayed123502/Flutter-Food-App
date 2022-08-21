import 'package:get/get.dart';

import '../controllers/address_controllers.dart';
import '../controllers/auth_controllers.dart';
import '../controllers/checkout_controller.dart';

class CheckoutBindings extends Bindings{
  @override
  void dependencies() {
    Get.put(CheckoutController());
   }

}