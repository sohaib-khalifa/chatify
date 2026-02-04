import 'package:chatify/core/styles/app_color.dart';
import 'package:flutter/material.dart';

class TextStyles {
  static const TextStyle brand = TextStyle(
    fontSize: 32,
    fontFamily: 'Pacifico',
    fontWeight: FontWeight.w400,
    color: Colors.white,
  );

  static const TextStyle headline = TextStyle(
    fontSize: 48,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
    color: AppColors.black,
  );

  static const TextStyle title = TextStyle(
    fontSize: 24,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
    color: AppColors.black,
  );

  static const TextStyle subtitle = TextStyle(
    fontSize: 18,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
    color: AppColors.black,
  );

  static const TextStyle body = TextStyle(
    fontSize: 16,
    fontFamily: 'Poppins',
    color: AppColors.black,
  );

  static const TextStyle caption = TextStyle(
    fontSize: 14,
    fontFamily: 'Poppins',
    color: AppColors.black,
  );
}
