import 'package:chatify/features/auth/screens/login_screen.dart';
import 'package:chatify/features/auth/screens/register_screen.dart';
import 'package:chatify/features/intro/screens/splash_screen.dart';
import 'package:chatify/features/intro/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ChatifyApp());
}

class ChatifyApp extends StatelessWidget {
  const ChatifyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        SplashScreen.id: (context) => SplashScreen(),
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        Registerscreen.id: (context)=> Registerscreen()
      },
      // initialRoute: LoginScreen.id,
      initialRoute: SplashScreen.id,
    );
  }
}
