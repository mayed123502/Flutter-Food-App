import 'package:get/get.dart';

import '../controllers/main_controller.dart';
import '../controllers/offer_controller.dart';

class OfferBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(OfferController());
  }
}
