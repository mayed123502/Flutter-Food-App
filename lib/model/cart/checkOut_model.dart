class CheckOut {
  List<Order>? array;

  CheckOut({this.array});

  CheckOut.fromJson(Map<String, dynamic> json) {
    if (json['array'] != null) {
      array = <Order>[];
      json['array'].forEach((v) {
        array!.add(new Order.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.array != null) {
      data['array'] = this.array!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Order {
  String? quantity;
  String? id;

  Order({this.quantity, this.id});

  Order.fromJson(Map<String, dynamic> json) {
    quantity = json['quantity'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['quantity'] = this.quantity;
    data['id'] = this.id;
    return data;
  }
}
