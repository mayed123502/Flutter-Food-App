import 'package:ecommerce_app/model/offer/offerData_model.dart';

class OfferModel {
  String? message;
  OfferData? data;
  int? status;

  OfferModel({this.message, this.data, this.status});

  OfferModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    data = json['data'] != null ? new OfferData.fromJson(json['data']) : null;
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