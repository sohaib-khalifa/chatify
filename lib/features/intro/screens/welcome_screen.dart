import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});
  static const id = 'welcome_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('hello')));
  }
}
