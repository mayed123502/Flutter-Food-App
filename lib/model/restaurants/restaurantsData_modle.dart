import '../../services/baseAPI.dart';

class DataRestaurants {
  int? id;
  String? name;
  String? logo;
  String? description;
  String? phoneNumber;
  String? address;
  int? rating;
  int? numRating;
  String? createdAt;
  String? updatedAt;
  Null? deletedAt;

  DataRestaurants(
      {this.id,
      this.name,
      this.logo,
      this.description,
      this.phoneNumber,
      this.address,
      this.rating,
      this.numRating,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});

  DataRestaurants.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    logo = BaseAPI.baseImage + json['logo'];
    description = json['description'];
    phoneNumber = json['phoneNumber'];
    address = json['address'];
    rating = json['rating'];
    numRating = json['NumRating'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['logo'] = this.logo;
    data['description'] = this.description;
    data['phoneNumber'] = this.phoneNumber;
    data['address'] = this.address;
    data['rating'] = this.rating;
    data['NumRating'] = this.numRating;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    return data;
  }
}
