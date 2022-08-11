import 'package:ecommerce_app/model/prodect/prodectCategory_modle.dart';
import 'package:ecommerce_app/model/prodect/prodectRestaurant_modle.dart';

class ProdectDetails {
  int? id;
  String? name;
  String? image;
  String? description;
  int? price;
  int? calories;
  int? active;
  int? rating;
  int? numRating;
  int? restaurantId;
  int? categoryId;
  Null? subcategoryId;
  String? createdAt;
  String? updatedAt;
  Null? deletedAt;
  ProdectRestaurant? restaurant;
  ProdectCategory? category;
  Null? subcategory;

  ProdectDetails(
      {this.id,
      this.name,
      this.image,
      this.description,
      this.price,
      this.calories,
      this.active,
      this.rating,
      this.numRating,
      this.restaurantId,
      this.categoryId,
      this.subcategoryId,
      this.createdAt,
      this.updatedAt,
      this.deletedAt,
      this.restaurant,
      this.category,
      this.subcategory});

  ProdectDetails.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    description = json['description'];
    price = json['price'];
    calories = json['calories'];
    active = json['active'];
    rating = json['rating'];
    numRating = json['NumRating'];
    restaurantId = json['restaurant_id'];
    categoryId = json['category_id'];
    subcategoryId = json['subcategory_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
    restaurant = json['restaurant'] != null
        ? new ProdectRestaurant.fromJson(json['restaurant'])
        : null;
    category = json['category'] != null
        ? new ProdectCategory.fromJson(json['category'])
        : null;
    subcategory = json['subcategory'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['image'] = this.image;
    data['description'] = this.description;
    data['price'] = this.price;
    data['calories'] = this.calories;
    data['active'] = this.active;
    data['rating'] = this.rating;
    data['NumRating'] = this.numRating;
    data['restaurant_id'] = this.restaurantId;
    data['category_id'] = this.categoryId;
    data['subcategory_id'] = this.subcategoryId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    if (this.restaurant != null) {
      data['restaurant'] = this.restaurant!.toJson();
    }
    if (this.category != null) {
      data['category'] = this.category!.toJson();
    }
    data['subcategory'] = this.subcategory;
    return data;
  }
}
