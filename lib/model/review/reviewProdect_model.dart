import '../../services/baseAPI.dart';

class RreviewProduct {
  String? message;
  List<Data>? data;
  int? status;

  RreviewProduct({this.message, this.data, this.status});

  RreviewProduct.fromJson(Map<String, dynamic> json) {
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
  int? userId;
  int? ratingForId;
  String? ratingForType;
  int? rate;
  String? feedback;
  String? ipAddress;
  String? createdAt;
  String? updatedAt;
  String? deletedAt;
  User? user;

  Data(
      {this.id,
      this.userId,
      this.ratingForId,
      this.ratingForType,
      this.rate,
      this.feedback,
      this.ipAddress,
      this.createdAt,
      this.updatedAt,
      this.deletedAt,
      this.user});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    ratingForId = json['ratingFor_id'];
    ratingForType = json['ratingFor_type'];
    rate = json['rate'];
    feedback = json['feedback'];
    ipAddress = json['ipAddress'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['ratingFor_id'] = this.ratingForId;
    data['ratingFor_type'] = this.ratingForType;
    data['rate'] = this.rate;
    data['feedback'] = this.feedback;
    data['ipAddress'] = this.ipAddress;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    return data;
  }
}

class User {
  int? id;
  String? name;
  String? image;

  User({this.id, this.name, this.image});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = BaseAPI.baseImage + json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['image'] = this.image;
    return data;
  }

}