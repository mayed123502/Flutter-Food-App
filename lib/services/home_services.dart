import 'package:ecommerce_app/services/baseAPI.dart';
import 'package:ecommerce_app/services/helper/crud.dart';

class HomeServices {
  static viewHomeRestaurants() async {
    var url = '${BaseAPI.authPath}' + '/restaurants/popularRestaurant';

    var response = await Crud.getData(url);
    return response.fold((l) => l, (r) => r);
  }

  static viewHomeFoods() async {
    var url = '${BaseAPI.authPath}' + '/products/popularProduct';

    var response = await Crud.getData(url);
    return response.fold((l) => l, (r) => r);
  }

  static viewHomeOffers() async {
    var url = '${BaseAPI.authPath}' + '/discounts';

    var response = await Crud.getData(url, map: {
      "pagesize": 3,
      "page": 1,
    });
    return response.fold((l) => l, (r) => r);
  }
}
