import 'package:chatify/core/constants/app_images.dart';
import 'package:chatify/core/functions/navigation.dart';
import 'package:chatify/core/styles/app_color.dart';
import 'package:chatify/core/styles/text_style.dart';
import 'package:chatify/features/auth/screens/login_screen.dart';
import 'package:chatify/core/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});
  static const id = 'welcome_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppImages.welcome,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 75,
            left: 30,
            right: 30,
            child: Column(
              children: [
                SvgPicture.asset(
                  AppImages.carrotSvg,
                  colorFilter: ColorFilter.mode(
                    AppColors.background,
                    BlendMode.srcIn,
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  'Welcome\nto our store',
                  style: TextStyles.headline.copyWith(
                    color: AppColors.background,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Ger your groceries in as fast as one hour',
                  style: TextStyles.body.copyWith(color: AppColors.grey),
                  // maxLines: 1,
                  // overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                ),
                SizedBox(height: 30),

                PrimaryButton(
                  onPressed: () {
                    pushReplacementNamed(context, LoginScreen.id);
                  },
                  title: 'Get Started',
                  height: 65,
                  width: double.infinity,
                  backgroundColor: AppColors.primary,
                  textStyle: TextStyles.subtitle.copyWith(
                    color: AppColors.background,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
