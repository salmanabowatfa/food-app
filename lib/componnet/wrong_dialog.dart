import 'package:flutter/material.dart';
import 'package:food_app/componnet/custom_button.dart';

void wrongDialog({required BuildContext context}) {
  showDialog(
    context: context,
    builder: (context) => Center(
      child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            Container(
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
                    'oh no!',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Montaga'),
                  ),
                  const Text(
                    'Smoe Thing Went Wrong',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Montaga'),
                  ),
                  const Text(
                    'Please Try Again',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Montaga'),
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 80.0),
                    child: CustomButton(
                      btnborderColor: const Color(0XFF103412),
                      btnbackColor: const Color(0XFF103412),
                      btntext: 'Try Again',
                      btntextColor: Colors.white,
                      onPressed: () {},
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
            Positioned(
              top: -20,
              child: Image.asset(
                'assets/image/Ellipse 3.png',
                height: 55,
                width: 50,
              ),
            ),
          ]),
    ),
  );
}
