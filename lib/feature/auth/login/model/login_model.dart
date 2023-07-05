class UserLoginModel {
  bool? status;
  int? statusCode;
  Data? data;
  String? message;

  UserLoginModel({this.status, this.statusCode, this.data, this.message});

  UserLoginModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    statusCode = json['statusCode'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    message = json['message'];
  }

  UserLoginModel.withError(String errorMsg) {
    message = errorMsg;
  }
  insertToJson(Map<String, dynamic> json) {
    return UserLoginModel.fromJson(json);
  }

  insertToError(String errorMsg) {
    return UserLoginModel.withError(errorMsg);
  }
}

class Data {
  String? authToken;
  User? user;

  Data({this.authToken, this.user});

  Data.fromJson(Map<String, dynamic> json) {
    authToken = json['auth_token'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['auth_token'] = this.authToken;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    return data;
  }
}

class User {
  int? id;
  String? email;
  String? password;
  User({this.id, this.email, this.password});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    password = json['password'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['email'] = this.email;
    data['password'] = this.password;

    return data;
  }
}
