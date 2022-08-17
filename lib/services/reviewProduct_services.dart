import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:ecommerce_app/services/baseAPI.dart';
import 'package:ecommerce_app/services/helper/crud.dart';

import '../utils/sharPreferenceUtils .dart';

class ReviewProduct {
  static showProductReviews(String productId) async {
    var url = '${BaseAPI.authPath}' + '/products/$productId/reviews';

    var response = await Crud.getData(
      url,
    );
    return response.fold((l) => l, (r) => r);
  }

  static addReviewProduct(String feedback, int rate, String productId) async {
    var url = '${BaseAPI.authPath}' + '/products/$productId/review';
    var body = jsonEncode({'rate': rate, 'feedback': feedback});

    var response = await Crud.postData(
      url,
      body,
      Options(headers: {
        'Authorization': 'Bearer ${SharedPrefs.instance.getString('token')}'
      }),
    );
   
    return response.fold((l) => l, (r) => r);
  }
}
