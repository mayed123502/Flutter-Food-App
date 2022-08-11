import 'package:dio/dio.dart';
import 'package:ecommerce_app/services/baseAPI.dart';

import '../model/homeProdect/homeProdectData.dart';
import '../model/homeRestaurant/homeRestaurantData.dart';
import '../model/offer/offerListData_model.dart';

class HomeServices {
  static Future<List<HomeRestaurantsData>> viewHomeRestaurants() async {
    var url = '${BaseAPI.authPath}' + '/restaurants/popularRestaurant';
    var response = await Dio().get(
      url,
    );
    Map<String, dynamic> data = new Map<String, dynamic>.from(response.data);
    final dataList = (response.data['data'] as List)
        .map((e) => HomeRestaurantsData.fromJson(e))
        .toList();
    return dataList;
  }

  static Future<List<HomeProdectData>> viewHomeFoods() async {
    var url = '${BaseAPI.authPath}' + '/products/popularProduct';
    var response = await Dio().get(
      url,
    );
    Map<String, dynamic> data = new Map<String, dynamic>.from(response.data);
    final dataList = (response.data['data'] as List)
        .map((e) => HomeProdectData.fromJson(e))
        .toList();
    return dataList;
  }

static  Future<List<OfferListData>> viewHomeOffers() async {
    var url = '${BaseAPI.authPath}' + '/discounts';
    var response = await Dio().get(url, queryParameters: {
      "pagesize": 3,
      "page": 1,
    });
    Map<String, dynamic> data = new Map<String, dynamic>.from(response.data);
    final dataList = (response.data['data']['data'] as List)
        .map((e) => OfferListData.fromJson(e))
        .toList();
    return dataList;
  }
}
