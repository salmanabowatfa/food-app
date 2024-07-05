import 'package:flutter/material.dart';

void fulsDialog({required BuildContext context}) {
  showDialog(
    context: context,
    builder: (context) => Center(
      child: Container(
        padding: const EdgeInsets.all(16),
        height: 251,
        width: 341,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color(0XFFFFFDFD)),
        child:  Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
          'assets/image/Group.png',
          height: 55,
          width: 49,
        ),
        const SizedBox(height: 20,),
             const Text(
              'Sorry!',
              style: TextStyle(
                  color: Color(0xff035014),
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Cabin'),
            ),
            const Text(
              'Incorrect password or email',
              style: TextStyle(
                  color: Color(0xff035014),
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Cabin'),
            ),
            
          ],
        ),
      ),
    ),
  );
}
