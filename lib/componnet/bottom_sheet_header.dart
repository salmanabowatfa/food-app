import 'package:flutter/material.dart';

class BottomSheetHeader extends StatelessWidget {
  const BottomSheetHeader({super.key, this.color =const Color(0xffD9D9D9)});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 38.0,
        height: 5.0,
        margin: const EdgeInsets.symmetric(vertical: 15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(4.0),
        ),
      ),
    );
  }
}