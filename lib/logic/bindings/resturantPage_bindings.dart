import 'package:get/get.dart';

import '../controllers/restaurantPage_controller.dart';

class ResturantBageBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(ResturantPageController());
   }

}