import 'dart:convert';

import 'package:get/get.dart';

import '../../model/homeProdect/homeProdectData.dart';
import '../../utils/sharPreferenceUtils .dart';

class CartController extends GetxController {
  var productsMap = {}.obs;
  // var sharedPrefs = SharedPrefs.instance;
  // String favouritesListString = '';

  @override
  void onInit() {
    // favouritesListString = sharedPrefs.getString('productsMap') ?? '';
    // print(favouritesListString);

    // if (favouritesListString != '') {
    //   String? encodedMap = sharedPrefs.getString('productsMap');
    //   Map<dynamic, dynamic> decodedMap = json.decode(encodedMap!);
    //   print(decodedMap.length);
    // }
    // print(favouritesListString);

    super.onInit();
  }

  void addProductToCart(HomeProdectData productModels) {
    if (productsMap.containsKey(productModels)) {
      productsMap[productModels] += 1;

      print(productsMap[productModels]);
    } else {
      productsMap[productModels] = 1;
      print(productsMap[productModels]);
    }
  }

  void addProductToCartCounter(HomeProdectData productModels, int counter) {
    if (productsMap.containsKey(productModels)) {
      productsMap[productModels] += counter;

      print(productsMap[productModels]);
    } else {
      productsMap[productModels] = counter;

      print(productsMap[productModels]);
    }
  }

  void removeProductsFarmCart(HomeProdectData productModels) {
    if (productsMap.containsKey(productModels) &&
        productsMap[productModels] == 1) {
      productsMap.removeWhere((key, value) => key == productModels);
    } else {
      productsMap[productModels] -= 1;
    }
  }
  

  void removeOneProduct(HomeProdectData productModels) {
    productsMap.removeWhere((key, value) => key == productModels);
  }

  get productSubTotal =>
      productsMap.entries.map((e) => e.key.price * e.value).toList();

  get total => productsMap.entries
      .map((e) => e.key.price * e.value)
      .toList()
      .reduce((value, element) => value + element)
      .toStringAsFixed(2);

  int quantity() {
    if (productsMap.isEmpty) {
      return 0;
    } else {
      return productsMap.entries
          .map((e) => e.value)
          .toList()
          .reduce((value, element) => value + element);
    }
  }
}
