
import 'package:ecommerce_app/model/restauntAll/categories_model.dart';

import '../../services/baseAPI.dart';

class DataOfRestaurant {
  int? id;
  String? name;
  String? logo;
  int? rating;
  List<Categories>? categories;

  DataOfRestaurant({this.id, this.name, this.logo, this.rating, this.categories});

  DataOfRestaurant.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    logo = BaseAPI.baseImage +  json['logo'];
    rating = json['rating'];
    if (json['categories'] != null) {
      categories = <Categories>[];
      json['categories'].forEach((v) {
        categories!.add(new Categories.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['logo'] = this.logo;
    data['rating'] = this.rating;
    if (this.categories != null) {
      data['categories'] = this.categories!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
