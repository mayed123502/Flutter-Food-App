import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:ecommerce_app/services/baseAPI.dart';
import 'package:ecommerce_app/utils/sharPreferenceUtils%20.dart';

class ServicesApi {
  static void updateProfile({required File file, required String name}) async {
    String fileName = file.path.split('/').last;
    print(fileName);

    FormData data = FormData.fromMap({
      "image": await MultipartFile.fromFile(
        file.path,
        filename: fileName,
      ),
      "name": name
    });

    Dio dio = new Dio();
    var url = '${BaseAPI.authPath}' + '/user/updateProfile';
    print('**');
    print(file.path);
    print(name);
    print(fileName);
    print('**');

    dio
        .post(
      url,
      data: data,
      options: Options(
        headers: {
          'Authorization': 'Bearer ${SharedPrefs.instance.getString('token')}'
        },
      ),
    )
        .then((response) {
      print('done');
      Map<String, dynamic> data = new Map<String, dynamic>.from(response.data);

      // var jsonResponse = jsonDecode(response.toString());

      print(data['data']['name']);
      print(data['data']['image']);

      // var testData = jsonResponse['message'].cast<double>();
      // var averageGrindSize = jsonResponse['average_particle_size'];
    }).catchError((error) => print(error));
  }
}
