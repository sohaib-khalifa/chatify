import 'package:chatify/core/styles/app_color.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.labelText,
    this.onChanged,
  });
  final String hintText;
  final String labelText;
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,

      cursorColor: AppColors.white,
      decoration: InputDecoration(
        // hint: Text('Email'),
        hintText: hintText,
        labelText: labelText,
        border: OutlineInputBorder(),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: AppColors.white),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: AppColors.black),
        ),
      ),
    );
  }
}
