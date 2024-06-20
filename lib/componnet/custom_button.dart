//import 'dart:ffi';

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton( 
      {
    super.key,
    required this.btnborderColor,
    required this.btnbackColor,
    required this.btntext,
    required this.btntextColor,
    this.onPressed,
    this.width,
    this.height,
    this.strokeAlign,
    this.icon,
    this.borderRadius = 50.0,
  });

  final Color btnborderColor;
  final Color btnbackColor;
  final Color btntextColor;
  final void Function()? onPressed;
  final double? width;
  final double? height;
  final double? strokeAlign;
  final String btntext;
  final IconData? icon;
  final double borderRadius;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(borderRadius))),
          backgroundColor: btnbackColor,
          fixedSize:
              height != null && width != null ? Size(width!, height!) : null,
          side: BorderSide(
              style: BorderStyle.solid,
              color: btnborderColor,
              strokeAlign: strokeAlign ?? 0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              btntext,
              style: TextStyle(color: btntextColor, fontFamily: 'Montaga'),
            ),
            Icon(
              icon,
              color: Color(0xffA3C5B0),
            ),
          ],
        ));
  }
}
