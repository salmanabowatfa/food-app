import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2,), () {
      Get.toNamed('/login');
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.sizeOf(context).height,
        child: Stack(
          children: [
            Center(
              child: Image.asset(
                'assets/image/splash_logo.png',
                width: 495,
                height: 402,
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset('assets/image/splash_background.png'),
            ),
          ],
        ),
      ),
    );
  }
}
