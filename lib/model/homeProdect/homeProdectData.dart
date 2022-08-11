import 'dart:convert';

import 'package:ecommerce_app/services/baseAPI.dart';

class HomeProdectData {
  int? id;
  String? name;
  String? image;
  int? rating;
  int? price;

  HomeProdectData({this.id, this.name, this.image, this.rating, this.price});

  HomeProdectData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = BaseAPI.baseImage + json['image'];
    rating = json['rating'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['image'] = this.image;
    data['rating'] = this.rating;
    data['price'] = this.price;
    return data;
  }

  static Map<String, dynamic> toMap(HomeProdectData homeProdectData) => {
        'id': homeProdectData.id,
        'image': homeProdectData.image,
        'rating': homeProdectData.rating,
        'price': homeProdectData.price,
        'name': homeProdectData.name,
      };
  static String encode(List<HomeProdectData> musics) => json.encode(
        musics
            .map<Map<String, dynamic>>((music) => HomeProdectData.toMap(music))
            .toList(),
      );

  static List<HomeProdectData> decode(String musics) =>
      (json.decode(musics) as List<dynamic>)
          .map<HomeProdectData>((item) => HomeProdectData.fromJson(item))
          .toList();
}
