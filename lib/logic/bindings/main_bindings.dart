import 'package:ecommerce_app/logic/controllers/main_controller.dart';
import 'package:get/get.dart';

import '../controllers/auth_controllers.dart';

class AuthBindings extends Bindings{
  @override
  void dependencies() {
    Get.put(MainController());
   }

}