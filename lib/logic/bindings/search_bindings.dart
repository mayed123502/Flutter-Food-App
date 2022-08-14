import 'package:get/get.dart';

import '../controllers/restaurantPage_controller.dart';
import '../controllers/search_controller.dart';

class SearchBindings extends Bindings{
  @override
  void dependencies() {
    Get.put(SearchController());
   }

}