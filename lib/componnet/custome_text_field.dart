import 'package:flutter/material.dart';

class CustomeTextField extends StatelessWidget {
  const CustomeTextField(
      {super.key,
      this.obscureText = false,
      this.borderColor = const Color(0xFFD7DDDB),
      this.backColor = const Color(0xFFFAFFF8),
      required this.hint,
      required this.onChanged,
      required this.validator,
      this.keyboardType,
      this.controller,
      this.suffixIcon});
  final Color? borderColor;
  final Color? backColor;
  final String hint;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final void Function(String) onChanged;
  final String? Function(String?) validator;
  final TextInputType? keyboardType;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      controller: controller,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      keyboardType: keyboardType,
      obscureText: obscureText,
      validator: validator,
      onChanged: onChanged,

      decoration: InputDecoration(
        // border: OutlineInputBorder(borderSide: BorderSide(color: Colors.amber)),
          filled: true,
          suffixIcon: suffixIcon,
          contentPadding: const EdgeInsets.all(10),
          fillColor: backColor,
          
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),

              borderSide: BorderSide(color: borderColor!)),
          hintText: hint,
          hintStyle: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
            fontFamily: 'Montaga',
            color: Color(0xFFA3C5B0),
          )),
    );
  }
}
