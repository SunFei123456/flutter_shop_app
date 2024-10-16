// ignore_for_file: unnecessary_this

class Article {
  int? id;
  String? createdAt;
  String? updatedAt;
  User? user;
  String? title;
  String? content;
  String? coverImage;
  int? userID;
  String? tags;
  String? category;
  bool? isHot;
  int? views;
  Null? comments;

  Article(
      {this.id,
      this.createdAt,
      this.updatedAt,
      this.user,
      this.title,
      this.content,
      this.coverImage,
      this.userID,
      this.tags,
      this.category,
      this.isHot,
      this.views,
      this.comments});

  Article.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    title = json['title'];
    content = json['content'];
    coverImage = json['coverImage'];
    userID = json['userID'];
    tags = json['tags'];
    category = json['category'];
    isHot = json['isHot'];
    views = json['views'];
    comments = json['comments'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    data['title'] = this.title;
    data['content'] = this.content;
    data['coverImage'] = this.coverImage;
    data['userID'] = this.userID;
    data['tags'] = this.tags;
    data['category'] = this.category;
    data['isHot'] = this.isHot;
    data['views'] = this.views;
    data['comments'] = this.comments;
    return data;
  }
  @override
  String toString() {
    // TODO: implement toString
    return toJson().toString();
  }
}

class User {
  int? id;
  String? createdAt;
  String? updatedAt;
  String? nickname;
  String? gender;
  String? avatar;
  String? email;
  String? password;
  String? phone;
  String? address;

  User(
      {this.id,
      this.createdAt,
      this.updatedAt,
      this.nickname,
      this.gender,
      this.avatar,
      this.email,
      this.password,
      this.phone,
      this.address});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    nickname = json['nickname'];
    gender = json['gender'];
    avatar = json['avatar'];
    email = json['email'];
    password = json['password'];
    phone = json['phone'];
    address = json['address'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['nickname'] = this.nickname;
    data['gender'] = this.gender;
    data['avatar'] = this.avatar;
    data['email'] = this.email;
    data['password'] = this.password;
    data['phone'] = this.phone;
    data['address'] = this.address;
    return data;
  }
}
