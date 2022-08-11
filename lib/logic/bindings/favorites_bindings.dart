import 'package:ecommerce_app/logic/controllers/productDetails.dart';
import 'package:get/get.dart';

import '../controllers/category_controller.dart';
import '../controllers/favorites_conntroller.dart';

class FavoritesBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(FavoritesController());
  }
}
