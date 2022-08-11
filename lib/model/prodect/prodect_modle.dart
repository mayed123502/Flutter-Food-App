import 'package:ecommerce_app/model/prodect/prodectData_modle.dart';

class ProdectModle {
  String? message;
  ProdectData? data;
  int? status;

  ProdectModle({this.message, this.data, this.status});

  ProdectModle.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    data = json['data'] != null ? new ProdectData.fromJson(json['data']) : null;
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['status'] = this.status;
    return data;
  }
}
