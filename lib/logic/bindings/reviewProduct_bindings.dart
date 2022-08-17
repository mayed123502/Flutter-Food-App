import 'package:get/get.dart';

import '../controllers/reviewProduct_controllers.dart';

class RreviewProductBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(RreviewProductController());
   }

}