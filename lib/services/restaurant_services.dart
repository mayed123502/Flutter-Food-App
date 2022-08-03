import 'package:dio/dio.dart';
import 'package:ecommerce_app/services/baseAPI.dart';

import '../model/product/product_modle.dart';

class RestaurantApi {
  Future<void> viewRestaurants(int pagesize, int pageIndex) async {
    var url = '${BaseAPI.authPath}' + '/restaurants';

    Response response = await Dio().get(url, queryParameters: {
      "pagesize": pagesize,
      "page": pageIndex,
    });
    Map<String, dynamic> data = new Map<String, dynamic>.from(response.data);

    if (response.statusCode == 200 && data['status'] == 200) {
      ProductModle prodect = ProductModle.fromJson(response.data);
      print('********');

      print(prodect.data?.restaurants?.data![0].logo);

      print('********');
    } else {
      print(data['status']);
    }
  }
}
