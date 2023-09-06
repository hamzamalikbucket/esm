import 'package:esm/utils/Constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Screens/AboutUs.dart';
import 'Screens/ContactUs.dart';
import 'Screens/Login.dart';
import 'Screens/Otp.dart';
import 'Screens/Register.dart';
import 'Screens/Splash.dart';
import 'Screens/home/home_screen.dart';

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
        theme: ThemeData(
          primarySwatch: Colors.blue,
          // fontFamily: GoogleFonts.nunito().fontFamily,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
        ),
        initialRoute: Constants.splash,

//define routes here
        routes: {
          Constants.splash: (context) =>const Splash(),
          Constants.loginscreen:(context)=>Login(),
          Constants.signUpScreen:(context)=>Register(),
          Constants.otpScreen:(context)=>Otp(),
          Constants.homeScreen:(context)=>const HomeScreen(),
          Constants.aboutUsScreen:(context)=>AboutUs(),
          Constants.contactUsScreen:(context)=>ContactUs(),

        }

    );
  }
}

