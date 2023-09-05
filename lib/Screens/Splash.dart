import 'package:esm/Screens/Login.dart';
import 'package:esm/utils/Constants.dart';
import 'package:esm/utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class Splash extends StatefulWidget{
  const Splash({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SplashState ();
  }

}

class SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Future.delayed(const Duration(seconds:10),(){

      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) =>Login(),
        ),
            (route) =>false,
      );

    });
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: AppColors.bluecolor,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                  'assets/images/testesm.png'),



            ],
          ),
        ),
      ),
    );
  }
}