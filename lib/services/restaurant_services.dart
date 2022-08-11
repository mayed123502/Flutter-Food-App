import 'package:dio/dio.dart';
import 'package:ecommerce_app/model/restauntAll/dataOfRestaurant.dart';
import 'package:ecommerce_app/services/baseAPI.dart';


class RestaurantApi {
  static Future<List<DataOfRestaurant>> viewAllRestaurants(int pageIndex) async {
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

//  Future<RestaurantData>
  // static Future<RestaurantData> viewRestaurantById({required String id}) async {
  //   var url = '${BaseAPI.authPath}' + '/restaurants/' + '$id';
  //   var response = await Dio().get(
  //     url,
  //   );
  //   Map<String, dynamic> data = new Map<String, dynamic>.from(response.data);

  //   if (response.statusCode == 200 && data['status'] == 200) 
  //   int x;
  //   final prodectData = RestaurantData.fromJson(data['data']);
  //   return prodectData;
    
  // }
}
