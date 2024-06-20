
class SigninModel{

  String? username;
  String? email;
  String? phone;
  String? password;
  String? confirm;
  

  
  

  bool get isValidEmail => email != null && email!.isNotEmpty && email!.contains('@');

  bool get isValidPassword => password != null && password!.isNotEmpty;

  bool get isVaildPhone => phone != null && phone!.isNotEmpty && phone!.length == 10;

  bool get isVaildUsername => username != null && username!.isNotEmpty;

  bool get isValidConfirm => confirm != null && confirm!.isNotEmpty && confirm == password;

  bool get isValid => isVaildPhone & isValidEmail & isValidPassword & isVaildUsername & isValidConfirm;




}