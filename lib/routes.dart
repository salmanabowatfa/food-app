import 'package:food_app/screens/verification_screen.dart';
import 'package:food_app/screens/home_screen.dart';
import 'package:food_app/screens/login_screen.dart';
import 'package:food_app/screens/signin_screen.dart';
import 'package:food_app/screens/splash_screen.dart';
import 'package:get/get.dart';

class Routes {
  static final routes = [
  GetPage(name: '/', page: () => const SplashScreen(),),
    GetPage(name: '/login', page: () => LoginScreen()),
    GetPage(name: '/signin', page: () => SigninScreen(),transition: Transition.rightToLeftWithFade,),
    GetPage(name: '/verification', page: () => const VerificationScreen(),transition: Transition.rightToLeftWithFade,),

    GetPage(name: '/home', page: () =>  HomeScreen())
  ];
}


