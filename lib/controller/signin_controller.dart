
import 'package:food_app/model/signin_model.dart';
import 'package:get/get.dart';

class SigninController extends GetxController{

  var isPasswordHidden =true.obs;
  var isConfirmHidden =true.obs;

  Rx<SigninModel> signinModel = SigninModel().obs;
    void changeEmail(String email) {
      signinModel.update((value) => value!.email = email);
      update();
    }
    
    void changePassword(String password) {
      signinModel.update((value) => value!.password = password);
      update();
    }
    
    void changePhone(String phone) {
            signinModel.update((value) => value!.phone = phone);
            update();

    }
    void changeUsername(String username) {
            signinModel.update((value) => value!.username = username);
            update();

    }

    void changeconfirm(String confirm) {
      signinModel.update((value) => value!.confirm = confirm);
      update();
    }



}