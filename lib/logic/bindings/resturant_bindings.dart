import 'package:get/get.dart';

import '../controllers/profileSetting.dart';
import '../controllers/resturant_controller.dart';

class ResturantBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(ResturantController());
   }

}