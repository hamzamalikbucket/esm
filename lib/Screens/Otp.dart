import 'package:esm/Widgets/HeadingTextWidget.dart';
import 'package:esm/Widgets/NormalTextWidget.dart';
import 'package:esm/Widgets/ToolbarImage.dart';
import 'package:esm/utils/Constants.dart';
import 'package:esm/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pinput/pinput.dart';

class Otp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return VerifyState();
  }
}

class VerifyState extends State<Otp> {
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
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          SvgPicture.asset(
                            Constants.otpTopImg,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          HeadingTextWidget(
                            input: 'OTP Verification',
                            fontsize: 20,
                            fontWeight: FontWeight.w600,
                            textcolor: AppColors.black,
                          ),
                          NormalTextWidget(
                            input:
                                'Enter the verification code we just sent to your \n email address or text to your phone',
                            fontsize: 16,
                            fontWeight: FontWeight.w500,
                            textcolor: AppColors.greyTextColor,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(

                            color: AppColors.lightgreybgColor,

                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Pinput(
                                  length: 5,
                                  defaultPinTheme: PinTheme(
                                    width: 64,
                                    height: 64,
                                    textStyle: const TextStyle(
                                        fontWeight: FontWeight.w600),
                                    decoration: BoxDecoration(
                                      color: AppColors.primaryColor,
                                      border: Border.all(color: AppColors.noColor),
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                  ),
                                  focusedPinTheme: PinTheme(
                                    width: 64,
                                    height: 64,
                                    textStyle: const TextStyle(
                                        fontWeight: FontWeight.w600),
                                    decoration: BoxDecoration(
                                      color: AppColors.primaryColor,
                                      border: Border.all(
                                          color: const Color.fromRGBO(
                                              114, 178, 238, 1)),
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                  ),
                                  submittedPinTheme: PinTheme(
                                    width: 64,
                                    height: 64,
                                    textStyle: const TextStyle(
                                        fontWeight: FontWeight.w600),
                                    decoration: BoxDecoration(
                                      color: AppColors.primaryColor,
                                      border: Border.all(
                                          color: const Color.fromRGBO(
                                              114, 178, 238, 1)),
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                  ),
                                  validator: (s) {
                                    if (s!.length < 5) {
                                      return 'Invalid OTP';
                                    }
                                    return null;
                                  },
                                  errorTextStyle: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.redColor),
                                  pinputAutovalidateMode:
                                      PinputAutovalidateMode.onSubmit,
                                  showCursor: true,
                                  onCompleted: (pin) => print(pin),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          NormalTextWidget(
                            input: 'Havent receieved the verification code?',
                            fontsize: 16,
                            fontWeight: FontWeight.w500,
                            textcolor: AppColors.greyTextColor,
                          ),
                          NormalTextWidget(
                            input: 'Resend',
                            fontsize: 16,
                            fontWeight: FontWeight.w500,
                            textcolor: AppColors.bluecolor,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, Constants.homeScreen);
                      },
                      child: SvgPicture.asset(
                        Constants.submitBtn,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
