import 'package:flutter/material.dart';
import 'package:mms_assignment/common/values/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final Function onChanged;
  final String hintText;
  final TextEditingController? controller;
  final bool obscureText;
  const CustomTextField(
      {super.key,
      required this.onChanged,
      required this.hintText,
      this.obscureText = false,
      this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      cursorColor: AppColors.primaryColor,
      onChanged: (val) => onChanged(val),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(4.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(4.0),
        ),
        hintText: hintText,
      ),
    );
  }
}
