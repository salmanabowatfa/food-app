import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:food_app/componnet/success_modal.dart';
import 'package:food_app/componnet/wrong_dialog.dart';
import 'package:food_app/services/crud.dart';
import 'package:food_app/services/statusrequest.dart';
import 'package:get/get.dart';

class VerificationController extends GetxController{

  void checkVerficationCode(
    {required String code, required BuildContext context}) async {
  Either<StatusRequest, Map<dynamic, dynamic>> callingApi =
      await Crud.postData(linkurl: "/auth/verifyEemail", data: {"code": code});

  if (callingApi.isRight()) {
    SuccessModalSheet.show(context);

  } else {
    wrongDialog(context: context);
  }
}
}