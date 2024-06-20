class LoginModel {
  
  String? email;
  String? phone;
  String? password;


  bool get isValidEmail  {
    return email != null && email!.isNotEmpty && email!.contains("@");
  }
  
  bool get isVaildPhone => phone != null && phone!.isNotEmpty && phone!.length == 10;

  bool get isValidPassword => password != null && password!.isNotEmpty;

  bool get isValid => isVaildPhone & isValidEmail & isValidPassword;

}