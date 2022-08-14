import 'package:dio/dio.dart';
import 'package:ecommerce_app/services/baseAPI.dart';

import '../model/homeProdect/homeProdectData.dart';

class FoodApi {
  static Future<List<HomeProdectData>> viewAllFoods(int pageIndex) async {
    var url = '${BaseAPI.authPath}' + '/products';

    var response = await Dio().get(url, queryParameters: {
      "pagesize": 8,
      "page": pageIndex,
    });
    Map<String, dynamic> data = new Map<String, dynamic>.from(response.data);
    if (response.statusCode == 200 && data['status'] == 200) final x = '';
    final dataList = (response.data['data']['data'] as List)
        .map((e) => HomeProdectData.fromJson(e))
        .toList();

    return dataList;
  }
}
