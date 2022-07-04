import 'package:get/get.dart';

import '../controllers/product_controller.dart';

class AuthBindings extends Bindings{
  @override
  void dependencies() {
    Get.put(ProductController());
   }

}