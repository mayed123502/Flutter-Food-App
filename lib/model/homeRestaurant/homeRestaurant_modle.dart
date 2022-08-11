import 'package:ecommerce_app/model/homeRestaurant/homeRestaurantData.dart';

class HomeRestaurant {
  String? message;
  Data? data;
  int? status;

  HomeRestaurant({this.message, this.data, this.status});

  HomeRestaurant.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['status'] = this.status;
    return data;
  }
}

class Data {
  List<HomeRestaurantsData>? restaurants;

  Data({this.restaurants});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['restaurants'] != null) {
      restaurants = <HomeRestaurantsData>[];
      json['restaurants'].forEach((v) {
        restaurants!.add(new HomeRestaurantsData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.restaurants != null) {
      data['restaurants'] = this.restaurants!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
