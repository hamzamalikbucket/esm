import 'package:esm/utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width,
            color: AppColors.bluecolor,


            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                SvgPicture.asset(
                  "assests/images/logosplash.svg",
                  width:147,
                  height: 147,
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}