
import 'package:ecommerce_app/model/restauntAll/allResrtaurantData_model.dart';

class RestaurantPage {
  String? message;
  AllResrtaurantData? data;
  int? status;

  RestaurantPage({this.message, this.data, this.status});

  RestaurantPage.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    data = json['data'] != null ? new AllResrtaurantData.fromJson(json['data']) : null;
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
