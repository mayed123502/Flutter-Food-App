import '../../services/baseAPI.dart';

class OfferProduct {
  int? id;
  String? name;
  String? image;
  int? price;
  String? description;
  int? calories;
  int? active;
  int? rating;
  int? numRating;
  int? restaurantId;

  OfferProduct(
      {this.id,
      this.name,
      this.image,
      this.price,
      this.description,
      this.calories,
      this.active,
      this.rating,
      this.numRating,
      this.restaurantId});

  OfferProduct.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = BaseAPI.baseImage + json['image'];
    price = json['price'];
    description = json['description'];
    calories = json['calories'];
    active = json['active'];
    rating = json['rating'];
    numRating = json['NumRating'];
    restaurantId = json['restaurant_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['image'] = this.image;
    data['price'] = this.price;
    data['description'] = this.description;
    data['calories'] = this.calories;
    data['active'] = this.active;
    data['rating'] = this.rating;
    data['NumRating'] = this.numRating;
    data['restaurant_id'] = this.restaurantId;
    return data;
  }
}