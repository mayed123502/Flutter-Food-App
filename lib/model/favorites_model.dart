import 'dart:convert';

import 'package:ecommerce_app/services/baseAPI.dart';

class FavoritesData {
  int? id;
  String? name;
  String? image;
  int? rating;
  int? price;

  int? calories;
  String? description;
  int? restaurantId;
  int? numRating;

  FavoritesData({
    this.id,
    this.name,
    this.image,
    this.rating,
    this.price,
    this.calories,
    this.description,
    this.restaurantId,
    this.numRating,
  });

  FavoritesData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image =  json['image'];
    rating = json['rating'];
    price = json['price'];
    calories = json['calories'];
    description = json['description'];
    numRating = json['NumRating'];
    restaurantId = json['restaurant_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['image'] = this.image;
    data['rating'] = this.rating;
    data['price'] = this.price;
    data['calories'] = this.calories;
    data['description'] = this.description;
    data['NumRating'] = this.numRating;
    data['restaurant_id'] = this.restaurantId;

    return data;
  }

  static Map<String, dynamic> toMap(FavoritesData homeProdectData) => {
        'id': homeProdectData.id,
        'image': homeProdectData.image,
        'rating': homeProdectData.rating,
        'price': homeProdectData.price,
        'name': homeProdectData.name,
        'calories': homeProdectData.calories,
        'description': homeProdectData.description,
        'NumRating': homeProdectData.numRating,
        'restaurant_id': homeProdectData.restaurantId
      };
  static String encode(List<FavoritesData> musics) => json.encode(
        musics
            .map<Map<String, dynamic>>((music) => FavoritesData.toMap(music))
            .toList(),
      );

  static List<FavoritesData> decode(String musics) =>
      (json.decode(musics) as List<dynamic>)
          .map<FavoritesData>((item) => FavoritesData.fromJson(item))
          .toList();
}
