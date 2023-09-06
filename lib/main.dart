import 'package:esm/utils/Constants.dart';
import 'package:flutter/material.dart';

import 'Screens/AboutUs.dart';
import 'Screens/ContactUs.dart';
import 'Screens/Login.dart';
import 'Screens/Otp.dart';
import 'Screens/Register.dart';
import 'Screens/Splash.dart';
import 'Screens/home/home_screen.dart';
import 'utils/app_colors.dart';

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
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor:AppColors.bluecolor),
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

