import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:ecommerce_app/services/check_internet.dart';
import 'package:ecommerce_app/services/helper/statusrequest.dart';
import 'package:dartz/dartz.dart';

class Crud {
  static Future<Either<StatusRequest, Map>> postData(
      String linkurl, String data, Options options) async {
    try {
      if (await checkInternet()) {
        Response response = await Dio().post(
          linkurl,
          data: data,
          options: options,
        );

        if (response.statusCode == 200 || response.statusCode == 201) {
          Map responsebody = jsonDecode(response.data);
          return Right(responsebody);
        } else {
          return const Left(StatusRequest.serverfailure);
        }
      } else {
        return const Left(StatusRequest.offlinefailure);
      }
    } catch (e) {
      print(e);
      return const Left(StatusRequest.serverfailure);
    }
  }

  static Future<Either<StatusRequest, Map>> getData(
    String linkurl, {
    Map<String, dynamic>? map,
  }) async {
    try {
      if (await checkInternet()) {
        Response response = await Dio().get(
          linkurl,
          queryParameters: map,
        );
        if (response.statusCode == 200 || response.statusCode == 201) {
          Map<String, dynamic> data =
              new Map<String, dynamic>.from(response.data);

          return Right(data);
        } else {
          return const Left(StatusRequest.serverfailure);
        }
      } else {
        return const Left(StatusRequest.offlinefailure);
      }
    } catch (_) {
      return const Left(StatusRequest.serverfailure);
    }
  }

  static Future<Either<StatusRequest, Map>> deleteData(
      String linkurl, Options options) async {
    try {
      if (await checkInternet()) {
        Response response = await Dio().delete(
          linkurl,
          options: options,
        );
        print(response.statusCode);
        if (response.statusCode == 200 || response.statusCode == 201) {
          Map<String, dynamic> data =
              new Map<String, dynamic>.from(response.data);

          print(data);

          return Right(data);
        } else {
          return const Left(StatusRequest.serverfailure);
        }
      } else {
        return const Left(StatusRequest.offlinefailure);
      }
    } catch (_) {
      return const Left(StatusRequest.serverfailure);
    }
  }
}
