import 'package:chatify/features/auth/screens/login_screen.dart';
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
      routes: {LoginScreen.id: (context) => LoginScreen()},
      initialRoute: LoginScreen.id,
    );
  }
}
