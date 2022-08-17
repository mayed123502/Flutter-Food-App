import '../../services/baseAPI.dart';

class Data {
  int? currentPage;
  List<DataOffer>? data;
  String? firstPageUrl;
  int? from;
  int? lastPage;
  String? lastPageUrl;
  List<Links>? links;
  Null? nextPageUrl;
  String? path;
  String? perPage;
  Null? prevPageUrl;
  int? to;
  int? total;

  Data(
      {this.currentPage,
      this.data,
      this.firstPageUrl,
      this.from,
      this.lastPage,
      this.lastPageUrl,
      this.links,
      this.nextPageUrl,
      this.path,
      this.perPage,
      this.prevPageUrl,
      this.to,
      this.total});

  Data.fromJson(Map<String, dynamic> json) {
    currentPage = json['current_page'];
    if (json['data'] != null) {
      data = <DataOffer>[];
      json['data'].forEach((v) {
        data!.add(new DataOffer.fromJson(v));
      });
    }
    firstPageUrl = json['first_page_url'];
    from = json['from'];
    lastPage = json['last_page'];
    lastPageUrl = json['last_page_url'];
    if (json['links'] != null) {
      links = <Links>[];
      json['links'].forEach((v) {
        links!.add(new Links.fromJson(v));
      });
    }
    nextPageUrl = json['next_page_url'];
    path = json['path'];
    perPage = json['per_page'];
    prevPageUrl = json['prev_page_url'];
    to = json['to'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['current_page'] = this.currentPage;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['first_page_url'] = this.firstPageUrl;
    data['from'] = this.from;
    data['last_page'] = this.lastPage;
    data['last_page_url'] = this.lastPageUrl;
    if (this.links != null) {
      data['links'] = this.links!.map((v) => v.toJson()).toList();
    }
    data['next_page_url'] = this.nextPageUrl;
    data['path'] = this.path;
    data['per_page'] = this.perPage;
    data['prev_page_url'] = this.prevPageUrl;
    data['to'] = this.to;
    data['total'] = this.total;
    return data;
  }
}

class DataOffer {
  int? id;
  String? title;
  int? productId;
  int? discountPercent;
  double? priceAfterDiscount;
  String? deadline;
  Product? product;

  DataOffer(
      {this.id,
      this.title,
      this.productId,
      this.discountPercent,
      this.priceAfterDiscount,
      this.deadline,
      this.product});

  DataOffer.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    productId = json['product_id'];
    discountPercent = json['discount_percent'];
    priceAfterDiscount = json['price_after_Discount'];
    deadline = json['deadline'];
    product =
        json['product'] != null ? new Product.fromJson(json['product']) : null;
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

class Product {
  int? id;
  String? name;
  String? image;
  int? price;
  String? description;
  int? calories;
  int? active;
  int? rating;
  int? numRating;
  int? restaurantId;

  Product(
      {this.id,
      this.name,
      this.image,
      this.price,
      this.description,
      this.calories,
      this.active,
      this.rating,
      this.numRating,
      this.restaurantId});

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image =BaseAPI.baseImage +  json['image'];
    price = json['price'];
    description = json['description'];
    calories = json['calories'];
    active = json['active'];
    rating = json['rating'];
    numRating = json['NumRating'];
    restaurantId = json['restaurant_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['image'] = this.image;
    data['price'] = this.price;
    data['description'] = this.description;
    data['calories'] = this.calories;
    data['active'] = this.active;
    data['rating'] = this.rating;
    data['NumRating'] = this.numRating;
    data['restaurant_id'] = this.restaurantId;
    return data;
  }
}

class Links {
  String? url;
  String? label;
  bool? active;

  Links({this.url, this.label, this.active});

  Links.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    label = json['label'];
    active = json['active'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    data['label'] = this.label;
    data['active'] = this.active;
    return data;
  }
}
