import 'package:chatify/core/constants/app_images.dart';
import 'package:chatify/core/functions/navigation.dart';
import 'package:chatify/core/functions/show_snack_bar.dart';
import 'package:chatify/core/styles/app_color.dart';
import 'package:chatify/core/styles/text_style.dart';
import 'package:chatify/features/auth/screens/register_screen.dart';
import 'package:chatify/features/auth/widgets/custom_text_form_field.dart';
import 'package:chatify/core/widgets/primary_button.dart';
import 'package:chatify/features/chat/screens/chat_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});
  static const id = 'login_screen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> formKey = GlobalKey();

  String? email;

  String? password;
  bool inAsyncCall = false;

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: inAsyncCall,
      child: Scaffold(
        backgroundColor: AppColors.primary,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Form(
            key: formKey,
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
                  'LOGIN',
                  style: TextStyles.title.copyWith(color: AppColors.lightGrey),
                ),
                SizedBox(height: 15),
                CustomTextFormField(
                  onChanged: (data) {
                    email = data;
                  },
                  hintText: 'Email',
                  labelText: 'Email',
                ),
                SizedBox(height: 20),
                CustomTextFormField(
                  onChanged: (data) {
                    password = data;
                  },
                  hintText: 'Password',
                  labelText: 'Password',
                ),
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
                  onPressed: () async {
                    if (formKey.currentState!.validate()) {
                      try {
                        setState(() {
                          inAsyncCall = true;
                        });
                        await LoginUser();
                        showSnackBar(
                          context: context,
                          text: 'success',
                          bgColor: AppColors.success,
                        );
                        pushReplacementNamed(context, ChatScreen.id);
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'user-not-found') {
                          showSnackBar(
                            context: context,
                            text: 'No user found for that email.',
                            bgColor: AppColors.error,
                          );
                        } else if (e.code == 'wrong-password') {
                          showSnackBar(
                            context: context,
                            text: 'Wrong password provided for that user.',
                            bgColor: AppColors.error,
                          );
                        }
                      } catch (e) {
                        showSnackBar(
                          context: context,
                          text: 'there was an error',
                          bgColor: AppColors.error,
                        );
                      }
                      setState(() {
                        inAsyncCall = false;
                      });
                    } else {}
                  },
                  title: 'LOGIN',
                  textStyle: TextStyles.body,
                  backgroundColor: AppColors.lightGrey,
                ),

                SizedBox(height: 10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("don't have an account?  "),
                    TextButton(
                      onPressed: () => pushTo(context, Registerscreen()),
                      child: Text('Register'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> LoginUser() async {
    final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email!,
      password: password!,
    );
  }
}
