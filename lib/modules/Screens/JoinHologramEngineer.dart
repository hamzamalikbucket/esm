import 'package:esm/resources/Widgets/ToolbarImage.dart';
import 'package:esm/resources/Widgets/app_field.dart';
import 'package:esm/resources/Widgets/app_text.dart';
import 'package:esm/resources/Widgets/sized_boxes.dart';
import 'package:esm/resources/utils/app_colors.dart';
import 'package:esm/resources/utils/constants.dart';
import 'package:esm/resources/widgets/buttons/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';



class JoinHologramEngineer extends StatefulWidget {
  const JoinHologramEngineer({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HologramState();
  }
}

class HologramState extends State<JoinHologramEngineer> {
  final GlobalKey<FormState> contactFormKey = GlobalKey<FormState>();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: ToolbarImage(
        appBar: AppBar(),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(28.0, 12, 28, 0),
                child: AppText(
                  'Join Hologram Engineer',
                  size: 16,
                  fontWeight: FontWeight.w700,
                  color: AppColors.black,
                ),
              ),
              form(context),

            ],
          ),
        ),
      ),
    );
  }

  Widget form(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(28.0, 12, 28, 0),
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
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 12, 20, 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20, bottom: 10),
                  child: AppText(
                    'First Name ',
                    size: 10,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black,
                  ),
                ),
                Card(

                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: AppIconField(
                      controller: firstNameController,
                      hint: 'Buland',

                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      validator: (val) {
                        if (val == null || val.trim().isEmpty) {
                          return "First name is required";
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                const SizeBoxHeight16(),
                const Padding(
                  padding: EdgeInsets.only(left: 20, bottom: 10),
                  child: AppText(
                    'Last Name ',
                    size: 10,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black,
                  ),
                ),
                Card(

                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: AppIconField(
                      controller: lastNameController,
                      hint: 'Khan',

                      keyboardType: TextInputType.text,
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
                const Padding(
                  padding: EdgeInsets.only(left: 20, bottom: 10),
                  child: AppText(
                    'Email Address',
                    size: 10,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black,
                  ),
                ),
                Card(

                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: AppIconField(
                      controller: emailController,
                      hint: 'johndoe@gmail.com',

                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      validator: (val) {
                        if (val == null || val.trim().isEmpty) {
                          return "Email required";
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                const SizeBoxHeight16(),
                const Padding(
                  padding: EdgeInsets.only(left: 20, bottom: 10),
                  child: AppText(
                    'Phone',
                    size: 10,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black,
                  ),
                ),
                Card(

                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: AppIconField(
                      controller: phoneController,
                      hint: '+123456789',

                      keyboardType: TextInputType.phone,
                      textInputAction: TextInputAction.next,
                      validator: (val) {
                        if (val == null || val.trim().isEmpty||val!=11) {
                          return "Last name is required";
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                const SizeBoxHeight16(),
                const Padding(
                  padding: EdgeInsets.only(left: 20, bottom: 10),
                  child: AppText(
                    'Address',
                    size: 10,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black,
                  ),
                ),
                Card(

                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: AppIconField(
                      controller: addressController,
                      hint: 'Texas ,USA',

                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.done,
                      validator: (val) {
                        if (val == null || val.trim().isEmpty) {
                          return "Required";
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                const SizeBoxHeight16(),
                const SizeBoxHeight8(),

                AppButton(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  assetUrl: Constants.sendRequestBtn,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
