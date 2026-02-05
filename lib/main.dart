import 'package:chatify/features/auth/screens/login_screen.dart';
import 'package:chatify/features/auth/screens/register_screen.dart';
import 'package:chatify/features/chat/screens/chat_screen.dart';
import 'package:chatify/features/intro/screens/splash_screen.dart';
import 'package:chatify/features/intro/screens/welcome_screen.dart';
import 'package:chatify/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
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
        Registerscreen.id: (context) => Registerscreen(),
        ChatScreen.id : (context)=> ChatScreen()
      },
      // initialRoute: LoginScreen.id,
      initialRoute: SplashScreen.id,
    );
  }
}
