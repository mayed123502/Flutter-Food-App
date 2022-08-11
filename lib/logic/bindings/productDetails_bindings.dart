import 'package:get/get.dart';

import '../../model/homeProdect/homeProdectData.dart';
import '../controllers/productDetails.dart';

class ProductDetailsBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(ProductDetailsController());
  }
}
