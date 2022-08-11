import '../../services/baseAPI.dart';

class HomeRestaurantsData {
  int? id;
  String? name;
  String? logo;

  HomeRestaurantsData({this.id, this.name, this.logo});

  HomeRestaurantsData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    logo = BaseAPI.baseImage + json['logo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['logo'] = this.logo;
    return data;
  }
}