import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:food_app/componnet/fuls_dialog.dart';
import 'package:food_app/services/crud.dart';
import 'package:food_app/services/statusrequest.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  void deleteAccount({required BuildContext context}) async {
    //TODO:: read email with vars
    Either<StatusRequest, Map<dynamic, dynamic>> callingApi =
        await Crud.postData(linkurl: 'auth/DeleteUserAccount', data: {'email': ''});
    if (callingApi.isRight()) {
      Get.toNamed('/login');
    } else {
      // ignore: use_build_context_synchronously
      fulsDialog(context: context);
    }
  }
}
