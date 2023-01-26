import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final Function onChanged;
  final String hintText;
  final TextEditingController? controller;
  const CustomTextField(
      {super.key,
      required this.onChanged,
      required this.hintText,
      this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (val) => onChanged(val),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(4.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(4.0),
        ),
        hintText: hintText,
      ),
    );
  }
}
