import 'package:flutter/material.dart';
import 'package:food_app/componnet/success_modal.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class AuthenticatedScreen extends StatelessWidget {
  const AuthenticatedScreen({super.key});

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
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Color(0xFFCECECE),
                    ),
                    onPressed: () {
                      // Get.toNamed('/signin');
                       Get.back();
                      
                      // print('object');
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
                       SuccessModalSheet.show(context);
                      // showModalBottomSheet(
                      //     context: context,
                      //     builder: (context) => Center(
                      //           child: Column(
                      //             children: [
                      //               Stack(children: [Image.asset('assets/image/Ellipse 1.png',height: 106,width: 106,),
                      //               Positioned(top: 8,right: 8,child: Icon(Icons.check,color: Colors.greenAccent,))
                      //               ]),
                      //               // const GradientIcon(
                      //               //   icon: Icons.check_circle_outline,
                      //               //   gradient: LinearGradient(
                      //               //     colors: [
                      //               //       Color(0xffA3C5B0),
                      //               //       Color(0xffB6E5B9)
                      //               //     ],
                      //               //     end: Alignment.topLeft,
                      //               //     begin: Alignment.bottomRight,
                      //               //   ),
                      //               //   size: 106,
                      //               // ),
                      //               GradientText('Success!', style: const TextStyle(fontSize: 22,fontFamily: 'Cabin',fontWeight: FontWeight.w700),colors: const [
                      //                 //Color(0xffA3C5B0),
                      //                Color(0xffB6E5B9),
                      //                Color.fromARGB(255, 7, 87, 9)
                      //               ]),
                                    
                      //             ],
                      //           ),
                      //         ));
                    },
                    onChanged: (value) {},
                    beforeTextPaste: (text) {
                      //but you can show anything you want here, like your pop up saying wrong paste format or etc
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
