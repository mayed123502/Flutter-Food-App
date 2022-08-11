class ProdectCategory {
  int? id;
  String? title;
  int? active;
  String? createdAt;
  String? updatedAt;
  Null? deletedAt;

  ProdectCategory(
      {this.id,
      this.title,
      this.active,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});

  ProdectCategory.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    active = json['active'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['active'] = this.active;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    return data;
  }
}
