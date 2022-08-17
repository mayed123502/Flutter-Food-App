import 'package:ecommerce_app/model/restauntAll/restaurants_model.dart';

class AllResrtaurantData {
  Restaurants? restaurants;
  List<String>? categories;

  AllResrtaurantData({this.restaurants, this.categories});

  AllResrtaurantData.fromJson(Map<String, dynamic> json) {
    restaurants = json['restaurants'] != null
        ? new Restaurants.fromJson(json['restaurants'])
        : null;
    categories = json['categories'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.restaurants != null) {
      data['restaurants'] = this.restaurants!.toJson();
    }
    data['categories'] = this.categories;
    return data;
  }
}
