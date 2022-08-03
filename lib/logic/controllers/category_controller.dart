import 'package:get/get.dart';

import '../../services/restaurant_services.dart';

class CategoryController extends GetxController {
  Future<void> viewRestaurants({required int pagesize, required int pageIndex}) async {
    RestaurantApi().viewRestaurants(pagesize, pageIndex);
  }
}
