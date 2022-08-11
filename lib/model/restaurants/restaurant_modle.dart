import 'package:ecommerce_app/model/restaurants/data_modle.dart';

class RestaurantModle {
  String? message;
  Data? data;
  int? status;

  RestaurantModle({this.message, this.data, this.status});

  RestaurantModle.fromJson(Map<String, dynamic> json) {
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
