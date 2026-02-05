import 'package:chatify/core/constants/app_images.dart';
import 'package:chatify/core/functions/navigation.dart';
import 'package:chatify/core/styles/app_color.dart';
import 'package:chatify/core/styles/text_style.dart';
import 'package:chatify/core/widgets/primary_button.dart';
import 'package:chatify/features/auth/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class Registerscreen extends StatelessWidget {
  const Registerscreen({super.key});
  static const id = 'register_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary.withValues(alpha: .9),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            SizedBox(height: 50),
            Image.asset(AppImages.scholar, height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('Scolar Chat', style: TextStyles.brand)],
            ),
            SizedBox(height: 100),
            Text(
              'REGISTER',
              style: TextStyles.title.copyWith(color: AppColors.lightGrey),
            ),
            SizedBox(height: 15),
            CustomTextField(hintText: 'Email', labelText: 'Email'),
            SizedBox(height: 10),
            CustomTextField(hintText: 'Password', labelText: 'Password'),
            SizedBox(height: 30),

            // ElevatedButton(
            //   style: ElevatedButton.styleFrom(
            //     shape: BeveledRectangleBorder(
            //       borderRadius: BorderRadiusGeometry.circular(16),
            //     ),
            //     minimumSize: Size(double.infinity, 60),
            //   ),

            //   onPressed: () {},
            //   child: Text('LOGIN', style: TextStyles.body),
            // ),
            PrimaryButton(
              onPressed: () {},
              title: 'REGISTER',
              textStyle: TextStyles.body,
              backgroundColor: AppColors.lightGrey,
            ),

            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("already have an account?  "),
                TextButton(
                  onPressed: () => popTo(context),
                  child: Text('Login'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
