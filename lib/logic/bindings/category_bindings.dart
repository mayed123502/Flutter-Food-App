import 'package:get/get.dart';

import '../controllers/category_controller.dart';

class CategotyBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(CategoryController());
  }
}
