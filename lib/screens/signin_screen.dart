import 'package:flutter/material.dart';
import 'package:food_app/componnet/custom_button.dart';
import 'package:food_app/componnet/custome_text_field.dart';
import 'package:food_app/controller/signin_controller.dart';
import 'package:get/get.dart';

class SigninScreen extends StatelessWidget {
  SigninScreen({super.key});
  final SigninController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        SizedBox(
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
            child: Image.asset(
              'assets/image/signin_background.png',
              fit: BoxFit.cover,
            )),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 94,
                width: 91,
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(20),
                      side: const BorderSide(
                        color: Color(0XFF035014),
                      )
                      //backgroundColor: Colors.white, // <-- Button color
                      ),
                  child: const Icon(Icons.camera_alt_outlined,
                      color: Color(0XFF035014)),
                ),
              ),
              Obx(() {
                controller.signinModel.value;

                return CustomeTextField(
                    hint: 'username',
                    onChanged: controller.changeUsername,
                    validator: (_) =>
                        controller.signinModel.value.isVaildUsername
                            ? null
                            : 'invalid name');
              }),
              Obx(() {
                controller.signinModel.value;
                return CustomeTextField(
                  hint: 'Email',
                  onChanged: controller.changeEmail,
                  validator: (_) => controller.signinModel.value.isValidEmail
                      ? null
                      : "Invalid email",
                  suffixIcon: IconButton(
                    icon: const Icon(
                      Icons.edit_square,
                      color: Color(0XffA3C5B0),
                    ),
                    onPressed: () {},
                  ),
                );
              }),
              Obx(() {
                controller.signinModel.value;
                return CustomeTextField(
                  hint: 'Mobile Number',
                  onChanged: controller.changePhone,
                  validator: (_) => controller.signinModel.value.isVaildPhone
                      ? null
                      : "Invalid Mobile Number",
                );
              }),
              Obx(() {
                controller.signinModel.value;
                return CustomeTextField(
                  obscureText: controller.isPasswordHidden.value,
                  hint: 'password',
                  onChanged: controller.changePassword,
                  validator: (_) => controller.signinModel.value.isValidPassword
                      ? null
                      : 'invalid password',
                  suffixIcon: IconButton(
                    icon: Icon(
                      controller.isPasswordHidden.value
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: const Color(0XffA3C5B0),
                    ),
                    onPressed: () {
                      controller.isPasswordHidden.value =
                          !controller.isPasswordHidden.value;
                    },
                  ),
                );
              }),
              Obx(() {
                controller.signinModel.value;
                return CustomeTextField(
                  obscureText: controller.isConfirmHidden.value,
                  hint: 'Confirm Password',
                  onChanged: controller.changeconfirm,
                  validator: (_) => controller.signinModel.value.isValidConfirm
                      ? null
                      : 'Miss Match',
                  suffixIcon: IconButton(
                    icon: Icon(
                      controller.isConfirmHidden.value
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: const Color(0XffA3C5B0),
                    ),
                    onPressed: () {
                      controller.isConfirmHidden.value =
                          !controller.isConfirmHidden.value;
                    },
                  ),
                );
              }),
              CustomButton(
                borderRadius:10.0,
                btnborderColor: const Color(0XFFD7DDDB) ,
                btnbackColor: Colors.white,
                btntext: 'Create PDF File  ',
                width: 180,
                height: 37,
                icon: Icons.cloud_upload_outlined,
                btntextColor: const Color(0XFFA3C5B0),
                onPressed: () {
                  
                },
                
              ),
              GetBuilder<SigninController>(builder: (c) {
                return CustomButton(
                    btnborderColor: Colors.black,
                    btnbackColor: const Color(0XFF97BFA0),
                    btntext: 'Log in',
                    btntextColor: const Color(0XFF035014),
                    onPressed: c.signinModel.value.isValid
                        ? () {
                            print('hello');
                            Get.toNamed('/authentication');
                            //logoutDialog(context: context);
                            // Get.to()
                          }
                        : null
                    // onPressed: () {
                    //   print('log in');
                    //   wrongDialog(context: context);
                    // },
                    );
              }),
              TextButton(
                  onPressed: () {
                    Get.toNamed('/login');
                  },
                  child: const Text(
                    'Aready have an account ? Login',
                    style: TextStyle(color: Color(0Xff035014)),
                    
                  )),
            ],
          ),
        ),
      ]),
    );
  }
}
