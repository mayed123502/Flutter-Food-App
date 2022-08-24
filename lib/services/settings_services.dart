import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:ecommerce_app/services/baseAPI.dart';
import 'package:ecommerce_app/utils/sharPreferenceUtils%20.dart';

import '../logic/controllers/settings_controller.dart';
import '../model/updateProfile/updateProfile.dart';

class ServicesApi {
  static Future<Data> updateProfile(
      {required File? file, required String name}) async {
    final shaedpref = SharedPrefs.instance;

    // String fileName = file!.path.split('/').last;

    Data myData = Data();

    FormData data = FormData.fromMap({
      "image": file != null
          ? await MultipartFile.fromFile(
              file.path,
              filename: file.path.split('/').last,
            )
          : null,
      "name": name
    });

    Dio dio = new Dio();
    var url = '${BaseAPI.authPath}' + '/user/updateProfile';

    var response = await dio.post(
      url,
      data: data,
      options: Options(
        headers: {
          'Authorization': 'Bearer ${SharedPrefs.instance.getString('token')}'
        },
      ),
    );

    int? statusCode = response.statusCode;
    if (statusCode == 200) {
      Map<String, dynamic> data = new Map<String, dynamic>.from(response.data);
      print(data);
      var imageUrl = '${BaseAPI.baseImage}' + '/${data['data']['image']}';

      shaedpref.setString("image", imageUrl);
      shaedpref.setString("name", '${data['data']['name']}');
      // Data datafromjson = Data.fromJson(response.data['data']);

      return Data(image: imageUrl, name: '${data['data']['name']}');
    } else {
      throw Exception('Gagal Login');
    }
  }
}
