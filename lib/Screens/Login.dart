import 'package:esm/Widgets/HeadingTextWidget.dart';
import 'package:esm/Widgets/NormalTextWidget.dart';
import 'package:esm/Widgets/InputWidget.dart';
import 'package:esm/Widgets/ToolbarImage.dart';
import 'package:esm/utils/Constants.dart';
import 'package:esm/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginState();
  }
}

class LoginState extends State<Login> {
  final GlobalKey<FormState> LoginFormKey = GlobalKey<FormState>();
  late String Mail, Pass;
  bool boxval = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: ToolbarImage(
        appBar: AppBar(),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        Constants.authImg,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      HeadingTextWidget(
                        input: 'Welcome Back!',
                        fontsize: 20,
                        fontWeight: FontWeight.w600,
                        textcolor: AppColors.black,
                      ),
                      NormalTextWidget(
                        input: 'Login to your existence account',
                        fontsize: 16,
                        fontWeight: FontWeight.w500,
                        textcolor: AppColors.greyTextColor,
                      ),
                    ],
                  ),
                ),
                form(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget form(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Form(
        key: LoginFormKey,
        child: Container(
          decoration: BoxDecoration(

            color: AppColors.lightgreybgColor,
            border: Border.all(color: Colors.transparent, width: 2),
            borderRadius: BorderRadius.circular(10),


            boxShadow: [
              BoxShadow(
                color: AppColors.lightgreybgColor,
                offset: Offset(0, 10),
                blurRadius: 10,
              ),
            ],

          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InputWidget(
                  title: "Mobile Number or Email",
                  isRequired: true,
                  keyboardType: TextInputType.text,
                  icon: Icons.person_outline,
                  value: (val) {
                    Mail = val!;
                  },
                  validate: true,
                  isPassword: false,
                  hintcolour: AppColors.greyHintColor),
              SizedBox(
                height: 10,
              ),
              InputWidget(
                  title: "Password",
                  isRequired: true,
                  keyboardType: TextInputType.text,
                  icon: Icons.person_outline,
                  value: (val) {
                    Pass = val!;
                  },
                  validate: true,
                  isPassword: true,
                  maxline: 1,
                  hintcolour: AppColors.greyHintColor),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 76,
                  decoration: BoxDecoration(
                    color: AppColors.lightgreybgColor,
                    border: Border.all(
                      color: AppColors.greybgColor,
                      width: 1,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Checkbox(
                        value: boxval,
                        onChanged: (value) {
                          setState(() {
                            boxval = !boxval;
                          });
                        },
                      ),
                      NormalTextWidget(
                        input: 'Im not a robot',
                        fontsize: 16,
                        fontWeight: FontWeight.w500,
                        textcolor: AppColors.greyTextColor,
                      ),
                      SizedBox(height: 10, width: 20),
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: SvgPicture.asset(
                          Constants.captChaImg,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, Constants.otpScreen);
                },
                child: SvgPicture.asset(
                  Constants.loginBTn,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  NormalTextWidget(
                    input: 'Dont have an account?',
                    fontsize: 16,
                    fontWeight: FontWeight.w500,
                    textcolor: AppColors.greyTextColor,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, Constants.signUpScreen);
                      },
                      child: NormalTextWidget(
                        input: 'Register ',
                        fontsize: 16,
                        fontWeight: FontWeight.w500,
                        textcolor: AppColors.bluecolor,
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
