import 'package:food_app/model/login_model.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {

      var isPasswordHidden =true.obs;
      var isRemember =false.obs;


    Rx<LoginModel> loginModel = LoginModel().obs;
    void changeEmail(String email) {
      loginModel.update((value) => value!.email = email);
      update();
    }
    
    void changePassword(String password) {
      loginModel.update((value) => value!.password = password);
      update();
    }
    
    void changePhone(String phone) {
            loginModel.update((value) => value!.phone = phone);
            update();

    }
}