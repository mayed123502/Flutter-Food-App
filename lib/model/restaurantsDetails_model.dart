import '../services/baseAPI.dart';
import 'homeProdect/homeProdectData.dart';

class RestaurantData {
  String? message;
  List<Data>? data;
  int? status;

  RestaurantData({this.message, this.data, this.status});

  RestaurantData.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['status'] = this.status;
    return data;
  }
}

class Data {
  int? id;
  String? name;
  String? logo;
  int? rating;
  int? numRating;
  String? address;
  String? startAt;
  String? endAt;
  List<HomeProdectData>? product;

  Data(
      {this.id,
      this.name,
      this.logo,
      this.rating,
      this.numRating,
      this.address,
      this.startAt,
      this.endAt,
      this.product});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    logo = BaseAPI.baseImage + json['logo'];
    rating = json['rating'];
    numRating = json['NumRating'];
    address = json['address'];
    startAt = json['start_at'];
    endAt = json['end_at'];
    if (json['product'] != null) {
      product = <HomeProdectData>[];
      json['product'].forEach((v) {
        product!.add(new HomeProdectData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['logo'] = this.logo;
    data['rating'] = this.rating;
    data['NumRating'] = this.numRating;
    data['address'] = this.address;
    data['start_at'] = this.startAt;
    data['end_at'] = this.endAt;
    if (this.product != null) {
      data['product'] = this.product!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Product {
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

  Product(
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
      this.deletedAt});

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = BaseAPI.baseImage + json['image'];
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
    return data;
  }
}
