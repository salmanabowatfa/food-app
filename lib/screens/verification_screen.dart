import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_app/componnet/success_modal.dart';
import 'package:food_app/componnet/wrong_dialog.dart';
import 'package:food_app/services/crud.dart';
import 'package:food_app/services/statusrequest.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  get colors => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Color(0xFFCECECE),
                    ),
                    onPressed: () {
                      Get.back();
                    },
                  ),
                ),
                Center(
                  child: Image.asset(
                    'assets/image/splash_logo.png',
                    fit: BoxFit.contain,
                    width: 221,
                  ),
                ),
                const Text(
                  'Verification Code',
                  style: TextStyle(
                      fontSize: 24,
                      color: Color(0XFF035014),
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Montaga'),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'We have sent the verification code to ',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Montaga'),
                ),
                const Text(
                  'your email address ',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Montaga'),
                ),
                const SizedBox(
                  height: 60,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: PinCodeTextField(
                    length: 6,
                    obscureText: false,
                    animationType: AnimationType.fade,
                    pinTheme: PinTheme(
                      fieldHeight: 45,
                      fieldWidth: 45,
                      shape: PinCodeFieldShape.circle,
                      activeFillColor: Colors.white,
                      disabledColor: Colors.white,
                      selectedFillColor: Colors.white,
                      activeColor: Colors.grey.shade300,
                      inactiveColor: Colors.grey.shade300,
                      selectedColor: const Color(0xffA3C5B0),
                      errorBorderColor: Colors.red,
                      inactiveFillColor: Colors.white,
                    ),
                    animationDuration: const Duration(milliseconds: 300),
                    backgroundColor: Colors.transparent,
                    enableActiveFill: true,
                    onCompleted: (v) {
                      checkVerficationCode(code: v, context: context);
                    },
                    onChanged: (value) {},
                    beforeTextPaste: (text) {
                      return true;
                    },
                    appContext: context,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: TextButton(
                      onPressed: () {
                        print(' 3.00');
                      },
                      child: const Text(
                        ' 03:00 ',
                        style: TextStyle(
                            color: Color(0Xff035014),
                            fontFamily: 'Montaga',
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      )),
                ),
                TextButton(
                    onPressed: () {
                      print('send again');
                    },
                    child: const Text(
                      'send again',
                      style: TextStyle(
                          color: Color(0Xff035014),
                          fontFamily: 'Montaga',
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void checkVerficationCode(
    {required String code, required BuildContext context}) async {
  Either<StatusRequest, Map<dynamic, dynamic>> callingApi =
      await Crud.postData(linkurl: "/auth/verifyEemail", data: {"code": code});

  if (callingApi.isRight()) {

    //TODO:: save token
    
    SuccessModalSheet.show(context);

  } else {
    // ignore: use_build_context_synchronously
    wrongDialog(context: context);
  }
}
