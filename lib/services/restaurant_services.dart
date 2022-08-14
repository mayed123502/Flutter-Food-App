import 'package:dio/dio.dart';
import 'package:ecommerce_app/model/restauntAll/categories_model.dart';
import 'package:ecommerce_app/model/restauntAll/dataOfRestaurant.dart';
import 'package:ecommerce_app/services/baseAPI.dart';

import '../model/restaurantsDetails_model.dart';

class RestaurantApi {
  static Future<List<DataOfRestaurant>> viewAllRestaurants(
      int pageIndex) async {
    var url = '${BaseAPI.authPath}' + '/restaurants';

    var response = await Dio().get(url, queryParameters: {
      "pagesize": 5,
      "page": pageIndex,
    });

    final dataList = (response.data['data']['restaurants']['data'] as List)
        .map((e) => DataOfRestaurant.fromJson(e))
        .toList();
    return dataList;
  }

  static Future<List<DataOfRestaurant>> viewRestaurantsWithOutPage(
    ) async {
    var url = '${BaseAPI.authPath}' + '/restaurants';

    var response = await Dio().get(
      url,
    );

    final dataList = (response.data['data']['restaurants']['data'] as List)
        .map((e) => DataOfRestaurant.fromJson(e))
        .toList();
    return dataList;
  }

  static Future<List<dynamic>> viewAllCategories(int pageIndex) async {
    var url = '${BaseAPI.authPath}' + '/restaurants';

    var response = await Dio().get(url, queryParameters: {
      "pagesize": 5,
      "page": pageIndex,
    });

    final dataList = (response.data['data']['categories'] as List).toList();
    return dataList;
  }

//  Future<Product>
  static Future<Data> viewRestaurantById({required String id}) async {
    var url = '${BaseAPI.authPath}' + '/restaurants/' + '1';
    var response = await Dio().get(
      url,
    );
    Map<String, dynamic> data = new Map<String, dynamic>.from(response.data);
    // print(data['data'][0]);
    final prodectData = Data.fromJson(data['data'][0]);
    return prodectData;
  }
}
