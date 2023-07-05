class DashboardModel {
  int? id;
  String? name;
  String? slug;
  String? image;
  String? metaTitle;
  String? metaDescription;
  int? status;
  int? main;
  String? createdAt;
  String? updatedAt;

  DashboardModel(
      {this.id,
        this.name,
        this.slug,
        this.image,
        this.metaTitle,
        this.metaDescription,
        this.status,
        this.main,
        this.createdAt,
        this.updatedAt});

  DashboardModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    image = json['image'];
    metaTitle = json['meta_title'];
    metaDescription = json['meta_description'];
    status = json['status'];
    main = json['main'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['slug'] = this.slug;
    data['image'] = this.image;
    data['meta_title'] = this.metaTitle;
    data['meta_description'] = this.metaDescription;
    data['status'] = this.status;
    data['main'] = this.main;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}