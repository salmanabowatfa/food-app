class signinModel {
  String? name;
  String? email;
  String? phone;
  String? password;
  String? passwordConfirmation;

  signinModel(
      {this.name,
      this.email,
      this.phone,
      this.password,
      this.passwordConfirmation});

  signinModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    password = json['password'];
    passwordConfirmation = json['password_confirmation'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['email'] = email;
    data['phone'] = phone;
    data['password'] = password;
    data['password_confirmation'] = passwordConfirmation;
    return data;
  }
}
