import 'package:dio/dio.dart';
import 'package:get/get.dart';

class ProductServices {
  Future<dynamic> getProduct() async {
    try {
      var response = await Dio().get('');
      print(response);
    } catch (e) {
      print(e);
    }
  }
}
