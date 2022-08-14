import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:ecommerce_app/services/baseAPI.dart';

import '../model/cart/Cart_model.dart';
import '../utils/sharPreferenceUtils .dart';

class CartServices {
  Future<CartData> addToCart(
      {required int quantity, required int product_id}) async {
    var url = '${BaseAPI.authPath}' + '/user/addToCart';
    var body = jsonEncode({'quantity': quantity, 'product_id': product_id});

    var response = await Dio().post(url,
        data: body,
        options: Options(headers: {
          'Authorization': 'Bearer ${SharedPrefs.instance.getString('token')}'
        }));
    if (response.statusCode == 200 || response.statusCode == 201) {
      Map<String, dynamic> data = new Map<String, dynamic>.from(response.data);
      print(data);
      CartData cartData = CartData.fromJson(data['data']);
      print(cartData);
      return cartData;
    } else {
      throw Exception('Gagal Login');
    }
  }

  void removeProductToCart(String) {
    var url = '${BaseAPI.authPath}' + '/user/addToCart';
  }
}
