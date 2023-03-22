import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application/account/screens/account.dart';
import 'package:flutter_application/account/screens/main_profile.dart';
import 'package:flutter_application/auth/screens/forgot_password_screen.dart';
import 'package:flutter_application/auth/screens/login_screen.dart';
import 'package:flutter_application/auth/screens/signup_screen.dart';
import 'package:flutter_application/chat/screens/chat.dart';
import 'package:flutter_application/notifications/screens/notifications.dart';
import 'package:flutter_application/root.dart';
import 'package:flutter_application/training/c1.dart';
import 'package:flutter_application/training/c2.dart';
import 'package:flutter_application/training/training.dart';
import 'package:flutter_application/utils/theme_notyifier.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:hidden_drawer_menu/util/change_notifier_consumer.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

final darkNotifier = ValueNotifier<bool>(false);

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void dispose() {
    darkNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: darkNotifier,
      builder: (BuildContext context, bool isDark, Widget? child) =>
          MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: isDark ? ThemeMode.dark : ThemeMode.light,

        initialRoute: '/traning',
        /* light theme settings */
        theme: ThemeData(
          fontFamily: 'DMSans',
          // primarySwatch: Colors.blue,
          primaryColor: Colors.white,
          brightness: Brightness.light,

          dividerColor: Colors.white54,
          scaffoldBackgroundColor: Colors.white,
        ),

        // /* Dark theme settings */
        darkTheme: ThemeData(
          // primarySwatch: Colors.blue,
          fontFamily: 'DMSans',
          primaryColor: Colors.black,
          brightness: Brightness.dark,

          dividerColor: Colors.black12,
          scaffoldBackgroundColor: const Color(0xFF131313),
        ),

        routes: {
          '/': (context) => const LoginScreen(),
          '/signup': (context) => const SignUpScreen(),
          '/forgot_password': (context) => const ForgotPasswordScreen(),
          '/root': (context) => const RootScreen(),
          '/chat': (context) => const ChatScreen(),
          '/notification': (context) => const NotificationScreen(),
          '/main_profile': (context) => const MainProfileScreen(),
          '/profile': (context) => const AccountScreen(),
          '/traning': (context) => const TraningScreen(),
          '/traningc1': (context) => TraningC1Screen(
              isDark: isDark,
              onChangeTheme: () {
                isDark = !isDark;
                darkNotifier.value = isDark;
              }),
          '/traningc2': (context) => const TraningC2Screen(),
        },
      ),
    );
  }
}
