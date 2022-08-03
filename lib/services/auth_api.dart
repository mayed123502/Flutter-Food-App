import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:ecommerce_app/main.dart';
import 'package:ecommerce_app/services/baseAPI.dart';

import '../logic/controllers/auth_controllers.dart';
import '../model/user.dart';
import '../utils/sharPreferenceUtils .dart';
import 'dart:convert' as convert;

class AuthApi {
  String baseUrl = '/api';

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
        final shaedpref =
            SharedPrefs.instance.setString("token", '${data['access_token']}');
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
    if (response.statusCode == 200) {
      UserModel user = UserModel.fromJson(response.data);
      final shaedpref =
          SharedPrefs.instance.setString("token", '${user.accessToken}');
      return user;
    } else {
      throw Exception('Gagal Login');
    }
  }

  Future<bool> resetPasswordStep1({
    required String email,
  }) async {
    var url = '${BaseAPI.authPath}' + '/password/email';

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
}
