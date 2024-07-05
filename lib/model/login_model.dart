class LoginModel {
  String? email;
  String? phone;
  String? password;

  LoginModel({this.email, this.phone, this.password});

  LoginModel.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    phone = json['phone'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    data['phone'] = phone;
    data['password'] = password;
    return data;
  }
}
