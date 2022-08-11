class Categories {
  String? title;
  Pivot? pivot;

  Categories({this.title, this.pivot});

  Categories.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    pivot = json['pivot'] != null ? new Pivot.fromJson(json['pivot']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    if (this.pivot != null) {
      data['pivot'] = this.pivot!.toJson();
    }
    return data;
  }
}

class Pivot {
  int? restaurantId;
  int? categoryId;

  Pivot({this.restaurantId, this.categoryId});

  Pivot.fromJson(Map<String, dynamic> json) {
    restaurantId = json['restaurant_id'];
    categoryId = json['category_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['restaurant_id'] = this.restaurantId;
    data['category_id'] = this.categoryId;
    return data;
  }
}