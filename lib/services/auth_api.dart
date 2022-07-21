import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/user.dart';

class AuthApi {
  String baseUrl = '/api';

  Future<UserModel?> signupAPI(
      String phone, String fullName, String password, String email) async {
    var url = '$baseUrl/register';
    var headers = {'Content-Type': 'application/json'};

    var body = jsonEncode({
      'fullName': fullName,
      'phone': phone,
      'password': password,
      'email': email,
    });
    var response = await http.post(
      Uri.parse(url),
      headers: headers,
      body: body,
    );

    if (response.statusCode == 200) {
      print(response.body);
      var data = jsonDecode(response.body);
      UserModel user = UserModel.fromJson(data);
      return user;
    } else {
      throw Exception('Gagal Register');
    }
  }

  Future<UserModel> login({
    required String email,
    required String password,
  }) async {
    var url = '$baseUrl/login';
    var headers = {'Content-Type': 'application/json'};
    var body = jsonEncode({
      'email': email,
      'password': password,
    });
    var response = await http.post(
      Uri.parse(url),
      headers: headers,
      body: body,
    );
    if (response.statusCode == 200) {
      print(response.body);
      var data = jsonDecode(response.body);
      UserModel user = UserModel.fromJson(data);
      return user;
    } else {
      throw Exception('Gagal Login');
    }
  }
}
