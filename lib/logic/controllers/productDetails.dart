import 'package:get/get.dart';

import '../../model/homeProdect/homeProdectData.dart';
import '../../services/food_services.dart';
import '../../utils/sharPreferenceUtils .dart';

class ProductDetailsController extends GetxController {
  Rx<HomeProdectData> prodectData = HomeProdectData().obs;

  var isLoading = true.obs;
  var counter = 1.obs;

  void plusCounter() {
    counter.value++;
  }

  void lessCounter() {
    if (counter.value > 1) {
      counter.value--;
    }
  }

  @override
  void onInit() async {
    var data = Get.arguments[0]['prodectData'] as HomeProdectData;
    prodectData.value = data;
    isLoading.value = false;
    counter.value = 1;

    super.onInit();
  }

  void viewProdectById(int id) async {
    final data = await FoodApi.viewProdectById(id: id);
    prodectData.value = data;

    // loading.value = false;
  }
}
