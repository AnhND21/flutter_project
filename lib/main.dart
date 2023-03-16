import 'package:flutter/material.dart';
import 'package:flutter_application/auth/screens/forgot_password_screen.dart';
import 'package:flutter_application/auth/screens/login_screen.dart';
import 'package:flutter_application/auth/screens/signup_screen.dart';
import 'package:flutter_application/root.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'DMSans',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/signup': (context) => const SignUpScreen(),
        '/forgot_password': (context) => const ForgotPasswordScreen(),
        '/root': (context) => const RootScreen(),
      },
    );
  }
}
