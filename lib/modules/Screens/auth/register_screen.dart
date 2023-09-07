import 'package:esm/resources/Widgets/HeadingTextWidget.dart';
import 'package:esm/resources/Widgets/NormalTextWidget.dart';
import 'package:esm/resources/Widgets/ToolbarImage.dart';
import 'package:esm/resources/Widgets/app_button.dart';
import 'package:esm/resources/Widgets/app_field.dart';
import 'package:esm/resources/Widgets/app_text.dart';
import 'package:esm/resources/Widgets/sized_boxes.dart';
import 'package:esm/resources/utils/app_colors.dart';
import 'package:esm/resources/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RegState();
  }
}

class RegState extends State<RegisterScreen> {
  final GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();
  TextEditingController rpcController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController dofController = TextEditingController();
  TextEditingController marriageDateController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool boxVal = true;

  @override
  Widget build(BuildContext context) {
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
                Column(
                  children: [
                    const SizeBoxHeight16(),
                    SvgPicture.asset(
                      Constants.authImg,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    HeadingTextWidget(
                      input: 'Welcome',
                      fontsize: 20,
                      fontWeight: FontWeight.w600,
                      textcolor: AppColors.black,
                    ),
                    const NormalTextWidget(
                      input: 'Signup to your new account',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      textColor: AppColors.greyTextColor,
                    ),
                  ],
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
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.lightgreybgColor,
            border: Border.all(color: Colors.transparent, width: 2),
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
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
              Card(
                elevation: 10,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: AppIconField(
                    controller: rpcController,
                    hint: 'Enter your rpc reseller code',
                    prefixIcon: Constants.person,
                    keyboardType: TextInputType.phone,
                    textInputAction: TextInputAction.next,
                    validator: (val) {
                      if (val == null || val.trim().isEmpty) {
                        return " rpc reseller code is required";
                      }
                      return null;
                    },
                  ),
                ),
              ),
              const SizeBoxHeight16(),
              Card(
                elevation: 10,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: AppIconField(
                    controller: firstNameController,
                    hint: 'Enter your first name',
                    prefixIcon: Constants.person,
                    keyboardType: TextInputType.phone,
                    textInputAction: TextInputAction.next,
                    validator: (val) {
                      if (val == null || val.trim().isEmpty) {
                        return "Last name is required";
                      }
                      return null;
                    },
                  ),
                ),
              ),
              const SizeBoxHeight16(),
              Card(
                elevation: 10,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: AppIconField(
                    controller: lastNameController,
                    hint: 'Enter your last name',
                    prefixIcon: Constants.person,
                    keyboardType: TextInputType.phone,
                    textInputAction: TextInputAction.next,
                    validator: (val) {
                      if (val == null || val.trim().isEmpty) {
                        return "Last name is required";
                      }
                      return null;
                    },
                  ),
                ),
              ),
              const SizeBoxHeight16(),
              Card(
                elevation: 10,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: AppIconField(
                    controller: dofController,
                    hint: 'Enter your date of birth',
                    prefixIcon: Constants.person,
                    keyboardType: TextInputType.phone,
                    textInputAction: TextInputAction.next,
                    validator: (val) {
                      if (val == null || val.trim().isEmpty) {
                        return "Date of birth is required";
                      }
                      return null;
                    },
                  ),
                ),
              ),
              const SizeBoxHeight16(),
              Card(
                elevation: 10,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: AppIconField(
                    controller: marriageDateController,
                    hint: 'Enter your marriage date',
                    prefixIcon: Constants.person,
                    keyboardType: TextInputType.phone,
                    textInputAction: TextInputAction.next,
                    validator: (val) {
                      if (val == null || val.trim().isEmpty) {
                        return "Marriage date is required";
                      }
                      return null;
                    },
                  ),
                ),
              ),
              const SizeBoxHeight16(),
              Card(
                elevation: 10,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: AppIconField(
                    controller: phoneNumberController,
                    hint: 'Enter your phone number',
                    prefixIcon: Constants.phone,
                    keyboardType: TextInputType.phone,
                    textInputAction: TextInputAction.next,
                    validator: (val) {
                      if (val == null || val.trim().isEmpty) {
                        return "Phone number is required";
                      }
                      return null;
                    },
                  ),
                ),
              ),
              const SizeBoxHeight16(),
              Card(
                elevation: 10,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: AppPasswordField(
                    controller: passwordController,
                    hint: 'Enter your password',
                    prefixIcon: Constants.lock,
                    suffixIcon: Constants.eye,
                    keyboardType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.next,
                    validator: (val) {
                      if (val == null || val.trim().isEmpty) {
                        return "Password is required";
                      } else if (val.trim().length < 8) {
                        return "Password must be at least 8 characters";
                      }
                      return null;
                    },
                  ),
                ),
              ),
              const SizeBoxHeight16(),
              Card(
                elevation: 10,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: AppPasswordField(
                    controller: passwordController,
                    hint: 'Confirm password',
                    prefixIcon: Constants.lock,
                    suffixIcon: Constants.eye,
                    keyboardType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.done,
                    validator: (val) {
                      if (val == null || val.trim().isEmpty) {
                        return "Password is required";
                      } else if (passwordController.text != val.trim()) {
                        return "Confirmation password does not match the entered";
                      }
                      return null;
                    },
                  ),
                ),
              ),
              const SizeBoxHeight16(),
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
                  const AppText(
                    'I agree to',
                    size: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.greyTextColor,
                  ),
                  const AppText(
                    'Terms and Conditions',
                    size: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.bluecolor,
                  ),
                ],
              ),
              const SizeBoxHeight16(),
              AppButton(
                onTap: () {
                  if (registerFormKey.currentState!.validate()) {
                  }
                },
                assetUrl: Constants.registerBtn,
              ),
              const SizeBoxHeight32(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const AppText(
                    'Already have an account?',
                    size: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.greyTextColor,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const AppText(
                      'Login',
                      size: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.bluecolor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
