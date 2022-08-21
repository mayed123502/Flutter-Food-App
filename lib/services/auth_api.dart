import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:ecommerce_app/services/baseAPI.dart';
import 'package:ecommerce_app/services/helper/crud.dart';

import '../model/user.dart';
import '../utils/sharPreferenceUtils .dart';
import 'dart:convert' as convert;

class AuthApi {
  String baseUrl = '/api';
  final shaedpref = SharedPrefs.instance;
  Future<bool> signupAPI(
      String phone, String fullName, String password, String email) async {
    var url = '${BaseAPI.authPath}' + '/register';

    var body = jsonEncode({
      'name': fullName,
      'phone_number': phone,
      'password': password,
      'email': email,
    });
    Response response = await Dio().post(
      url,
      data: body,
    );
    Map<String, dynamic> data = new Map<String, dynamic>.from(response.data);

    if (response.statusCode == 200) {
      if (data['message'] == 'fails') {
        return false;
      } else {
        shaedpref.setString("token", '${data['access_token']}');
        shaedpref.setString("phone_number", '${data['user']['phone_number']}');
        shaedpref.setString("email", '${data['user']['email']}');
        shaedpref.setString("image", '${data['user']['image']}');
        shaedpref.setString("name", '${data['user']['name']}');

        return true;
      }
    } else {
      throw Exception('Gagal Register');
    }
  }

  Future<UserModel> login({
    required String email,
    required String password,
  }) async {
    var url = '${BaseAPI.authPath}' + '/login';

    var body = jsonEncode({
      'email': email,
      'password': password,
    });

    var response = await Dio().post(
      url,
      data: body,
      options: Options(headers: BaseAPI.headers),
    );
    int? statusCode = response.statusCode;
    if (statusCode == 200) {
      UserModel user = UserModel.fromJson(response.data);

      shaedpref.setString("token", '${user.accessToken}');
      shaedpref.setString("phone_number", '${user.user!.phoneNumber}');
      shaedpref.setString("email", '${user.user!.email}');
      shaedpref.setString("image", '${user.user!.image}');
      shaedpref.setString("name", '${user.user!.name}');

      return user;
    } else {
      throw Exception('Gagal Login');
    }
  }

  Future<bool> resetPasswordStep1({
    required String email,
  }) async {
    var url = '${BaseAPI.baseImage}' + '/password/email';

    var body = jsonEncode({
      'email': email,
    });

    var response = await Dio().post(
      url,
      data: body,
      options: Options(
          followRedirects: false,
          validateStatus: (status) {
            return status! < 500;
          }),
    );
    print(response.data);
    Map<String, dynamic> data = new Map<String, dynamic>.from(response.data);

    if (response.statusCode == 200 && data['message'] != null) {
      return true;
    } else {
      return false;
    }
  }

  Future<bool> resetPasswordStep2({
    required String code,
  }) async {
    var url = '${BaseAPI.authPath}' + '/password/code/check';

    var body = jsonEncode({
      'code': code,
    });

    var response = await Dio().post(
      url,
      data: body,
      options: Options(
          followRedirects: false,
          validateStatus: (status) {
            return status! < 500;
          }),
    );

    Map<String, dynamic> data = new Map<String, dynamic>.from(response.data);

    if (response.statusCode == 200 && data['message'] != 'fails') {
      return true;
    } else {
      return false;
    }
  }

  Future<bool> resetPasswordStep3({
    required String code,
    required String password,
  }) async {
    var url = '${BaseAPI.authPath}' + '/password/reset';

    var body = jsonEncode({'code': code, 'password': password});

    var response = await Dio().post(
      url,
      data: body,
      options: Options(
          followRedirects: false,
          validateStatus: (status) {
            return status! < 500;
          }),
    );

    Map<String, dynamic> data = new Map<String, dynamic>.from(response.data);

    if (response.statusCode == 200 && data['message'] != 'fails') {
      return true;
    } else {
      // throw Exception('Gagal Login');
      return false;
    }
  }

  void logout() async {
    var url = '${BaseAPI.authPath}' + '/logout';

    await Dio()
        .post(url,
            options: Options(headers: {
              'Authorization':
                  'Bearer ${SharedPrefs.instance.getString('token')}'
            }))
        .whenComplete(() {
      SharedPrefs.instance.remove('token');
    });
  }

  static Future<bool> changePassword({
    required String old_password,
    required String password,
  }) async {
    var url = '${BaseAPI.authPath}' + '/user/changePassword';
    var body = jsonEncode({
      'old_password': old_password,
      'password': password,
      'confirm_password': password
    });

    var response = await Dio().post(
      url,
      data: body,
      options: Options(headers: {
        'Authorization': 'Bearer ${SharedPrefs.instance.getString('token')}'
      }),
    );
    Map<String, dynamic> data = new Map<String, dynamic>.from(response.data);

    if (response.statusCode == 200 &&
        (data['status'] == 422 ||
            data['status'] == 200 ||
            data['status'] == 201)) {
      return true;
    } else {
      return false;
    }
  }
}
