import 'package:flutter/material.dart';
import 'package:food_app/componnet/bottom_sheet_header.dart';
import 'package:food_app/componnet/custom_button.dart';
import 'package:get/get.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class SuccessModalSheet extends StatelessWidget {
  const SuccessModalSheet({super.key});

  static void show(
    BuildContext context,
  ) {
    showModalBottomSheet(
      context: context,
      enableDrag: true,
      isDismissible: true,
      isScrollControlled: true,
      backgroundColor: const Color(0xfffffdfd),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(12.0))),
      builder: (context) {
        return SuccessModalSheet();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 46),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const BottomSheetHeader(),
          Container(
              height: 106,
              width: 106,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/image/Ellipse 1.png')),
              ),
              child: Image.asset(
                'assets/image/Group 8.png',
              )),
              const SizedBox(
                  height: 30,
                ),
          GradientText('Success!',
              style: const TextStyle(
                  fontSize: 22,
                  fontFamily: 'Cabin',
                  fontWeight: FontWeight.w700),
              colors: const [
                //Color(0xffA3C5B0),
                Color(0xffB6E5B9),
                Color.fromARGB(255, 7, 87, 9)
              ]),
              const SizedBox(
                  height: 30,
                ),
          const Text(
            'Congratulations! You have been successfully authenticated',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 18, fontFamily: 'Cabin', color: Color(0xffb6b6b6)),
          ),
          const SizedBox(
                  height: 30,
                ),
                CustomButton(strokeAlign: 1,width: MediaQuery.of(context).size.width*0.5,
                height: 32,
                btnborderColor: const Color(0XFFA3C5B0),
                btnbackColor: const Color(0xffb6e5b9),
                btntext: 'Contiue',
                btntextColor: const Color(0XFF035014),
                onPressed: () {
                  Get.toNamed('/home');
                  
                },),
                const SizedBox(
                  height: 30,
                ),
        ],
      ),
    );
  }
}
