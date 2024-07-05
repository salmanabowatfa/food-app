import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:food_app/componnet/fuls_dialog.dart';
import 'package:food_app/model/login_model.dart';
import 'package:food_app/services/crud.dart';
import 'package:food_app/services/statusrequest.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  Rx<String> email = "".obs;
  Rx<String> phone = "".obs;
  Rx<String> password = "".obs;
  var isPasswordHidden = true.obs;
  var isRemember = false.obs;

  void changeEmail(String e) {
    email.update((value) => email.value = e);
    // update();
  }

  void changePassword(String e) {
    password.update((value) => password.value = e);
    // update();
  }

  void changePhone(String e) {
    phone.update((value) => phone.value = e);
    // update();
  }


  void login(
      {required String phone,
      required String email,
      required String password,
      required BuildContext context}) async {
    LoginModel loginModel = LoginModel.fromJson({
      "email": email,
      "phone": phone,
      "password": password,
    });
    Either<StatusRequest, Map<dynamic, dynamic>> callingApi =
        await Crud.postData(linkurl: '/auth/login', data: loginModel.toJson());
    if (callingApi.isRight()) {
      //TODO :: save email
      Get.toNamed('/verification');
    } else {
      // ignore: use_build_context_synchronously
      fulsDialog(context: context);
    }
  }

  bool get isValidEmail => email.value.isNotEmpty && email.value.contains("@");

  bool get isVaildPhone => phone.isNotEmpty && phone.value.length == 10;

  bool get isValidPassword => password.isNotEmpty;

  bool get isFullValid => isVaildPhone && isValidEmail && isValidPassword;
}
