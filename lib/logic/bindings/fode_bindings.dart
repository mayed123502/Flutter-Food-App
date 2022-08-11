import 'package:get/get.dart';

import '../controllers/category_controller.dart';
import '../controllers/food_controller.dart';

class FodeBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(FodeController());
  }
}
