import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:food_app/componnet/fuls_dialog.dart';
import 'package:food_app/componnet/wrong_dialog.dart';
import 'package:food_app/model/signin_model.dart';
import 'package:food_app/services/crud.dart';
import 'package:food_app/services/statusrequest.dart';
import 'package:get/get.dart';

class SigninController extends GetxController {
  Rx<String> username = "".obs;
  Rx<String> email = "".obs;
  Rx<String> phone = "".obs;
  Rx<String> password = "".obs;
  Rx<String> confirm = "".obs;

  var isPasswordHidden = true.obs;
  var isConfirmHidden = false.obs;

  void changeUsername(String e) {
    username.update((value) => username.value = e);
    // update();
  }

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

  void changeconfirm(String e) {
    confirm.update((value) => confirm.value = e);
    // update();
  }

  void signin(
      {required String phone,
      required String username,
      required String confirm,
      required String email,
      required String password,
      required BuildContext context}) async {
    signinModel signin = signinModel.fromJson({
      "email": email,
      "phone": phone,
      "password": password,
      "name": username,
      "password_confirmation": confirm,
    });
    Either<StatusRequest, Map<dynamic, dynamic>> callingApi =
        await Crud.postData(linkurl: '/auth/Signup', data: signin.toJson());
    if (callingApi.isRight()) {
      //TODO :: save email
      Get.toNamed('/verification');
    } else {
      // ignore: use_build_context_synchronously
      wrongDialog(context: context);
    }
  }

  bool get isVaildUsername => username.value.isNotEmpty;

  bool get isValidEmail => email.value.isNotEmpty && email.value.contains("@");

  bool get isValidConfirm =>confirm.value.isNotEmpty && confirm == password;

  bool get isVaildPhone => phone.isNotEmpty && phone.value.length == 10;

  bool get isValidPassword => password.isNotEmpty;

  bool get isFullValid => isVaildPhone && isValidEmail && isValidPassword && isValidConfirm && isVaildUsername;
}


// class SigninController extends GetxController {
//   Rx<String> username= "".obs;
//   Rx<String> email = "".obs;
//   Rx<String> phone = "".obs;
//   Rx<String> password = "".obs;
//   Rx<String> confirm = "".obs;
//   var isPasswordHidden = true.obs;
//   var isConfirmHidden = true.obs;

//   void signup(
//       {required String name,
//       required String phone,
//       required String email,
//       required String password,
//       required String confirmPassword,
//       required BuildContext context}) async {
//     Either<StatusRequest, Map<dynamic, dynamic>> callingApi =
//         await Crud.postData(linkurl: '/auth/Signup', data: {
//       "name": name,
//       "email": email,
//       "phone": phone,
//       "password": password,
//       "password_confirmation": confirmPassword
//     });
//     if (callingApi.isRight()) {
//       Get.toNamed('/verification');
//     } else {
//       // ignore: use_build_context_synchronously
//       wrongDialog(context: context);
//     }
//   }
// }
