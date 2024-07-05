import 'package:flutter/material.dart';
import 'package:food_app/componnet/custom_button.dart';
import 'package:food_app/componnet/custome_text_field.dart';
import 'package:food_app/controller/login_controller.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  final LoginController controller = Get.find();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'assets/image/splash_logo.png',
                height: 384,
                width: 326,
                fit: BoxFit.cover,
              ),
              Obx(() {
                controller.email.value;
                return CustomeTextField(
                  hint: 'email',
                  onChanged: controller.changeEmail,
                  validator: (_) =>
                      controller.isValidEmail ? null : "Invalid email",
                  // controller: TextEditingController(),
                  suffixIcon: const Icon(
                    Icons.edit_square,
                    color: Color(0XffA3C5B0),
                  ),
                );
              }),
              const SizedBox(
                height: 21,
              ),
              Obx(() {
                controller.phone.value;
                return CustomeTextField(
                  hint: 'Mobile Number',
                  onChanged:(s){
                  controller.changePhone(s);

                  }, 
                  validator: (_) =>
                      controller.isVaildPhone ? null : "Invalid phone",
                );
              }),
              const SizedBox(
                height: 21,
              ),
              Obx(() {
                controller.password.value;
                return CustomeTextField(
                  obscureText: controller.isPasswordHidden.value,
                  hint: 'password',
                  onChanged:(s){
                  controller.changePassword(s);

                  }, 
                  validator: (_) =>
                      controller.isValidPassword ? null : "Invalid password",
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
              const SizedBox(
                height: 21,
              ),
              Obx( () {
                return CustomButton(
                    btnborderColor: const Color(0xff97BFA0),
                    btnbackColor: const Color(0XFFB6E5B9),
                    btntext: 'Login',
                    btntextColor: const Color(0XFF035014),
                    onPressed: controller.isFullValid
                        ? () {
                          
                            controller.login(
                                phone: controller.phone.value,
                                email: controller.email.value,
                                password: controller.password.value,
                                context: context);
                            // Get.toNamed('/home');
                          }
                        : null);
              }),
              const SizedBox(
                height: 9,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {
                        controller.isRemember.value =
                            !controller.isRemember.value;
                      },
                      child: Row(
                        children: [
                          Obx(
                            () => Icon(
                              controller.isRemember.value
                                  ? Icons.circle_outlined
                                  : Icons.check_circle_outline_outlined,
                              size: 12,
                              color: const Color(0xFF035014),
                            ),
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          const Text(
                            'Remember me',
                            style: TextStyle(
                                color: Color(0Xff035014), fontFamily: "Cabin"),
                          ),
                        ],
                      )),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Forgot Password?',
                        style: TextStyle(
                            color: Color(0Xff035014), fontFamily: "Cabin"),
                      )),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              CustomButton(
                strokeAlign: 2,
                btnborderColor: const Color(0XFFA3C5B0),
                btnbackColor: const Color(0xffb6e5b9),
                btntext: 'Create new account',
                btntextColor: const Color(0XFF035014),
                onPressed: () {
                  Get.toNamed('/signin');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
