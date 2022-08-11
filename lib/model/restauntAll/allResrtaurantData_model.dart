

import 'package:ecommerce_app/model/restauntAll/categories_model.dart';
import 'package:ecommerce_app/model/restauntAll/restaurants_model.dart';

class AllResrtaurantData {
  Restaurants? restaurants;
  List<Categories>? categories;

  AllResrtaurantData({this.restaurants, this.categories});

  AllResrtaurantData.fromJson(Map<String, dynamic> json) {
    restaurants = json['restaurants'] != null
        ? new Restaurants.fromJson(json['restaurants'])
        : null;
    if (json['categories'] != null) {
      categories = <Categories>[];
      json['categories'].forEach((v) {
        categories!.add(new Categories.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.restaurants != null) {
      data['restaurants'] = this.restaurants!.toJson();
    }
    if (this.categories != null) {
      data['categories'] = this.categories!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
