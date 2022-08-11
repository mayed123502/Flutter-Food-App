import 'package:ecommerce_app/model/restauntAll/dataOfRestaurant.dart';
import 'package:get/get.dart';

import '../../services/restaurant_services.dart';

class ResturantPageController extends GetxController {
  dynamic argumentData = Get.arguments;
  var restaurantData = DataOfRestaurant().obs;
  var loading = true.obs;
  // @override
  // void onInit() async {
  //   viewRestaurantById(argumentData[0]['id']);
  // }

  // void viewRestaurantById(String id) async {
  //   final data = await RestaurantApi.viewRestaurantById(id: id);
  //   restaurantData.value = data;
  //   loading.value = false;
  // }
}
