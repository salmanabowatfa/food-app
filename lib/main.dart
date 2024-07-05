import 'package:flutter/material.dart';
import 'package:food_app/controller/login_controller.dart';
import 'package:food_app/controller/signin_controller.dart';
import 'package:food_app/routes.dart';
import 'package:food_app/screens/splash_screen.dart';
import 'package:get/get.dart';

void main() {
  injectControllers();
  runApp(const MyApp());
}

void injectControllers() {
  Get.put(LoginController());
  Get.put(SigninController());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: Routes.routes,
      home: const SplashScreen(),
    );
  }
}
