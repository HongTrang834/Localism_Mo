import 'package:flutter/material.dart';
import 'package:localism/root/home_page.dart';
import 'screens/splash_screen.dart';
import 'screens/intro_screen.dart';
import 'screens/login_screen.dart';
import 'screens/register_screen.dart';
import 'screens/otp_screen.dart';
import 'screens/info_screen.dart';
import 'screens/complete_screen.dart';

void main() => runApp(LocalismApp());

class LocalismApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Localism',
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => SplashScreen(),
        '/intro': (context) => IntroScreen(),
        '/login': (context) => LoginScreen(),
        '/homepage': (context) => HomePage(),
        '/register': (context) => RegisterScreen(),
        '/otp': (context) => OtpVerificationScreen(),
        '/info': (context) => InformationScreen(),
        '/complete': (context) => CompleteScreen(),
      },
    );
  }
}
