import 'package:chatify/core/styles/app_color.dart';
import 'package:chatify/core/styles/text_style.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.width = double.infinity,
    this.height = 65,
    this.textStyle,
    this.backgroundColor = AppColors.primary,
  });
  final void Function() onPressed;
  final String title;
  final TextStyle? textStyle;
  final double? width;
  final double? height;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(16),
        ),
        // backgroundColor: AppColors.primaryColor,
        backgroundColor: backgroundColor,

        // minimumSize: Size(double.infinity, 65),
        minimumSize: Size(width!, height!),
      ),

      onPressed: onPressed,
      child: Text(
        title,
        // 'Get Started',
        // style: TextStyles.subtitle.copyWith(color: AppColors.backgroundColor),
        style:
            textStyle ??
            TextStyles.subtitle.copyWith(color: AppColors.background),
      ),
    );
  }
}
