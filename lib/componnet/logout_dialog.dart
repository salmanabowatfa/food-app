import 'package:flutter/material.dart';
import 'package:food_app/componnet/custom_button.dart';

void logoutDialog({required BuildContext context}) {
  showDialog(
    context: context,
    builder: (context) => Center(
      child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            Material(
              child: Container(
                padding: const EdgeInsets.all(16),
                height: 251,
                width: 341,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0XFFFFFDFD)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(
                      flex: 3,
                    ),
                    const Text(
                      'Oh no! You’re leaving...',
                      style: TextStyle(
                          color: Color(0XFF035014),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Cabin'),
                    ),
                    const Text(
                      'Are you sure?',
                      style: TextStyle(
                          color: Color(0XFF035014),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Cabin'),
                    ),
                    
                    const Spacer(
                      flex: 2,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 80.0),
                      child: CustomButton(
                        btnborderColor: const Color(0XFFB6E5B9),
                        btnbackColor: const Color(0XFFB6E5B9),
                        btntext: 'No',
                        btntextColor: const Color(0XFF035014),
                        onPressed: () {},
                        // height: 28,
                        // width: 113,
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 80.0),
                      child: CustomButton(
                        btnborderColor: const Color(0XFFB6E5B9),
                        btnbackColor: const Color(0XFFB6E5B9),
                        btntext: 'Yes,Log Me out',
                        btntextColor: const Color(0XFF035014),
                        onPressed: () {},
                        // height: 28,
                        // width: 113,
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
            Positioned(
              top: -20,
              child: Image.asset(
                'assets/image/log-out (1) 2.png',
                height: 55,
                width: 50,
              ),
            ),
          ]),
    ),
  );
}
