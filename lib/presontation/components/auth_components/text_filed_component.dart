


import 'package:flutter/material.dart';

class TextFiledComponent extends StatelessWidget {
  const TextFiledComponent({
    super.key, required this.hintText, required this.prefixIcon, required this.isSecure, required this.controller,
  });
  final String hintText;
  final IconData prefixIcon;
  final bool isSecure;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isSecure,
      keyboardType: TextInputType.emailAddress,
      style: const TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.w400),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your full $hintText';
        }
        return null;
      },
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(width: 1, color: Colors.grey)
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(width: 1, color: Colors.grey)
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(width: 1, color: Colors.red)
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(width: 1, color: Colors.grey)
        ),
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.grey, fontSize: 17, fontWeight: FontWeight.w400),
        prefixIcon: Icon(prefixIcon, color: Colors.grey,),
      ),
    );
  }
}