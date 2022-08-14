import 'dart:convert';

class Cart {
  String? message;
  CartData? data;
  int? status;

  Cart({this.message, this.data, this.status});

  Cart.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    data = json['data'] != null ? new CartData.fromJson(json['data']) : null;
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

class CartData {
  int? orderId;
  int? productId;
  int? unitPrice;
  int? quantity;
  num? price;
  int? id;
  String? name;
  String? image;

  CartData(
      {this.orderId,
      this.productId,
      this.unitPrice,
      this.quantity,
      this.price,
      this.id,
      this.image,
      this.name});

  CartData.fromJson(Map<String, dynamic> json) {
    orderId = json['order_id'];
    productId = json['product_id'];
    unitPrice = json['unitPrice'];
    quantity = json['quantity'];
    price = json['price'];

    id = json['id'];
    image = json['image'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['order_id'] = this.orderId;
    data['product_id'] = this.productId;
    data['unitPrice'] = this.unitPrice;
    data['quantity'] = this.quantity;
    data['price'] = this.price;

    data['id'] = this.id;
    data['name'] = this.name;
    data['image'] = this.image;

    return data;
  }

  static Map<String, dynamic> toMap(CartData cart) => {
        'order_id': cart.orderId,
        'product_id': cart.productId,
        'unitPrice': cart.unitPrice,
        'quantity': cart.quantity,
        'price': cart.price,
        'id': cart.id,
        'name': cart.name,
        'image': cart.image
      };
  static String encode(List<CartData> cart) => json.encode(
        cart.map<Map<String, dynamic>>((cart) => CartData.toMap(cart)).toList(),
      );

  static List<CartData> decode(String musics) =>
      (json.decode(musics) as List<dynamic>)
          .map<CartData>((item) => CartData.fromJson(item))
          .toList();
}
