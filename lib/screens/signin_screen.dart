
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
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height:150,
                  width: 150,
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
                  controller.username.value;
            
                  return CustomeTextField(
                      hint: 'username',
                      onChanged: controller.changeUsername,
                      validator: (_) =>
                          controller.isVaildUsername
                              ? null
                              : 'invalid name');
                }),
                const SizedBox(height: 20,),
                Obx(() {
                  controller.email.value;
                  return CustomeTextField(
                    hint: 'Email',
                    onChanged: controller.changeEmail,
                    validator: (_) => controller.isValidEmail
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
                const SizedBox(height: 20,),
                Obx(() {
                  controller.phone.value;
                  return CustomeTextField(
                    hint: 'Mobile Number',
                    onChanged: controller.changePhone,
                    validator: (_) => controller.isVaildPhone
                        ? null
                        : "Invalid Mobile Number",
                  );
                }),
                const SizedBox(height: 20,),
                Obx(() {
                  controller.password.value;
                  return CustomeTextField(
                    obscureText: controller.isPasswordHidden.value,
                    hint: 'Password',
                    onChanged: controller.changePassword,
                    validator: (_) => controller.isValidPassword
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
                const SizedBox(height: 20,),
                Obx(() {
                  controller.confirm.value;
                  return CustomeTextField(
                    obscureText: controller.isConfirmHidden.value,
                    hint: 'Confirm Password',
                    onChanged: controller.changeconfirm,
                    validator: (_) => controller.isValidConfirm
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
                const SizedBox(height: 50,),
                CustomButton(
                  borderRadius: 10.0,
                  btnborderColor: const Color(0XFFD7DDDB),
                  btnbackColor: Colors.white,
                  btntext: 'Create PDF File  ',
                  width: 180,
                  height: 37,
                  icon: Icons.cloud_upload_outlined,
                  btntextColor: const Color(0XFFA3C5B0),
                  onPressed: () {},
                ),
                const SizedBox(height: 65,),
                Obx(() {
                  return CustomButton(
                      btnborderColor: Colors.black,
                      btnbackColor: const Color(0XFF97BFA0),
                      btntext: 'Sign up',
                      btntextColor: const Color(0XFF035014),
                      onPressed: controller.isFullValid
                          ? () {
                              // print(controller.signinModel.value.email);
                              controller.signin(
                                  context: context,
                                  email: controller.email.value,
                                  username:controller.username.value,
                                  phone: controller.phone.value,
                                  password:controller.password.value,
                                  confirm:controller.confirm.value,
                              );
                                      
                            }
                          : null);
                }),
                TextButton(
                    onPressed: () {
                      Get.toNamed('/login');
                    },
                    child:  const Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Aready have an account ?',
                          style: TextStyle(color: Color(0Xff035014),fontFamily: 'Cabin'),
                        ),
                        Text(
                          '  Log in',
                          style: TextStyle(color: Colors.green,fontFamily: 'Cabin'),
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
