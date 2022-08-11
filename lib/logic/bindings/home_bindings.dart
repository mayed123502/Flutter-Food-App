import 'package:get/get.dart';

import '../controllers/category_controller.dart';
import '../controllers/home_controllers.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
  }
}
