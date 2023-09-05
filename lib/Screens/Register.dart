import 'package:esm/Widgets/HeadingTextWidget.dart';
import 'package:esm/Widgets/NormalTextWidget.dart';
import 'package:esm/Widgets/InputWidget.dart';
import 'package:esm/Widgets/ToolbarImage.dart';
import 'package:esm/utils/Constants.dart';
import 'package:esm/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Register extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RegState();
  }
}

class RegState extends State<Register> {
  final GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();
  late String fName, lName, mobileNum, dOb, marriageDate, pass, conPass, promo;
  bool boxVal = true;
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
                        input: 'Welcome',
                        fontsize: 20,
                        fontWeight: FontWeight.w600,
                        textcolor: AppColors.black,
                      ),
                      NormalTextWidget(
                        input: 'Signup to your new account',
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
        key: registerFormKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
/*            PhoneInputWidget(title: "Promo Code", isRequired: false, keyboardType: TextInputType.text,
                icon: Icons.person_outline,


                value: (val) {
                  promo = val!;
                },validate: true, isPassword: false, hintcolour: AppColors.greyHintColor),
            SvgPicture.asset(

              Constants.validate,
            height: 64,
                width: 64,
            ),*/
            InputWidget(
                title: "First Name",
                isRequired: true,
                keyboardType: TextInputType.text,
                icon: Icons.person_outline,
                value: (val) {
                  fName = val!;
                },
                validate: true,
                isPassword: false,
                hintcolour: AppColors.greyHintColor),
            SizedBox(
              height: 10,
            ),
            InputWidget(
                title: "Last Name",
                isRequired: true,
                keyboardType: TextInputType.text,
                icon: Icons.person_outline,
                value: (val) {
                  lName = val!;
                },
                validate: true,
                isPassword: false,
                hintcolour: AppColors.greyHintColor),
            SizedBox(
              height: 10,
            ),
            InputWidget(
                title: "Mobile Number",
                isRequired: true,
                keyboardType: TextInputType.text,
                icon: Icons.person_outline,
                value: (val) {
                  mobileNum = val!;
                },
                validate: true,
                isPassword: false,
                hintcolour: AppColors.greyHintColor),
            SizedBox(
              height: 10,
            ),
            InputWidget(
                title: "Date of Birth",
                isRequired: true,
                keyboardType: TextInputType.text,
                icon: Icons.person_outline,
                value: (val) {
                  dOb = val!;
                },
                validate: true,
                isPassword: false,
                hintcolour: AppColors.greyHintColor),
            SizedBox(
              height: 10,
            ),
            InputWidget(
                title: "Marriage Date",
                isRequired: true,
                keyboardType: TextInputType.text,
                icon: Icons.person_outline,
                value: (val) {
                  marriageDate = val!;
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
                maxline: 1,
                value: (val) {
                  pass = val!;
                },
                validate: true,
                isPassword: true,
                hintcolour: AppColors.greyHintColor),
            SizedBox(
              height: 10,
            ),
            InputWidget(
                title: "Password Again",
                isRequired: true,
                keyboardType: TextInputType.text,
                icon: Icons.person_outline,
                maxline: 1,
                value: (val) {
                  conPass = val!;
                },
                validate: true,
                isPassword: true,
                hintcolour: AppColors.greyHintColor),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Checkbox(
                  value: boxVal,
                  onChanged: (value) {
                    setState(() {
                      boxVal = !boxVal;
                    });
                  },
                ),
                NormalTextWidget(
                  input: 'I agree to',
                  fontsize: 16,
                  fontWeight: FontWeight.w500,
                  textcolor: AppColors.greyTextColor,
                ),
                NormalTextWidget(
                  input: 'Terms and Conditions',
                  fontsize: 16,
                  fontWeight: FontWeight.w500,
                  textcolor: AppColors.bluecolor,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SvgPicture.asset(
              Constants.registerBtn,
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
                  input: 'Already have an account?',
                  fontsize: 16,
                  fontWeight: FontWeight.w500,
                  textcolor: AppColors.greyTextColor,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: NormalTextWidget(
                      input: 'Login',
                      fontsize: 16,
                      fontWeight: FontWeight.w500,
                      textcolor: AppColors.bluecolor,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
