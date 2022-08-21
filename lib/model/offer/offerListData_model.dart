import 'package:ecommerce_app/model/offer/offerProdet_model.dart';

import '../homeProdect/homeProdectData.dart';

class OfferListData {
  int? id;
  String? title;
  int? productId;
  int? discountPercent;
  double? priceAfterDiscount;
  String? deadline;
  HomeProdectData? product;

  OfferListData(
      {this.id,
      this.title,
      this.productId,
      this.discountPercent,
      this.priceAfterDiscount,
      this.deadline,
      this.product});

  OfferListData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    productId = json['product_id'];
    discountPercent = json['discount_percent'];
    priceAfterDiscount = json['price_after_Discount'];
    deadline = json['deadline'];
    product = json['product'] != null
        ? new HomeProdectData.fromJson(json['product'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['product_id'] = this.productId;
    data['discount_percent'] = this.discountPercent;
    data['price_after_Discount'] = this.priceAfterDiscount;
    data['deadline'] = this.deadline;
    if (this.product != null) {
      data['product'] = this.product!.toJson();
    }
    return data;
  }
}
