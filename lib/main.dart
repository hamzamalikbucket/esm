import 'package:esm/resources/utils/constants.dart';
import 'package:flutter/material.dart';

import 'modules/Screens/dashboard/bottom_nav_bar.dart';
import 'modules/Screens/splash_screen.dart';
import 'modules/Screens/auth/login_screen.dart';
import 'modules/Screens/auth/otp_screen.dart';
import 'modules/Screens/auth/register_screen.dart';
import 'modules/Screens/dashboard/home/about_us_screen.dart';
import 'modules/Screens/dashboard/home/contact_us_screen.dart';
import 'modules/Screens/dashboard/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'esm App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: false,
          cardColor: Colors.white,
        ),
        initialRoute: Constants.splash,

//define routes here
        routes: {
          Constants.splash: (context) => const SplashScreen(),
          Constants.loginScreen: (context) => const LoginScreen(),
          Constants.signUpScreen: (context) => const RegisterScreen(),
          Constants.otpScreen: (context) => const OtpScreen(),
          Constants.homeScreen: (context) => const HomeScreen(),
          Constants.aboutUsScreen: (context) => const AboutUsScreen(),
          Constants.contactUsScreen: (context) => const ContactUsScreen(),
          Constants.bottomNavigationBar: (context) => const BottomNavigationBarScreen(),
        });
  }
}
