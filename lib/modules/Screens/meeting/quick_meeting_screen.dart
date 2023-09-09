import 'package:esm/resources/Widgets/app_text.dart';
import 'package:esm/resources/Widgets/sized_boxes.dart';
import 'package:esm/resources/utils/Constants.dart';
import 'package:esm/resources/widgets/app_button.dart';
import 'package:esm/resources/widgets/app_field.dart';
import 'package:esm/resources/widgets/dialogs/quick_meeting_dialog.dart';
import 'package:flutter/material.dart';

class QuickMeetingScreen extends StatefulWidget {
  const QuickMeetingScreen({super.key});

  @override
  State<QuickMeetingScreen> createState() => _QuickMeetingScreenState();
}

class _QuickMeetingScreenState extends State<QuickMeetingScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController titleController = TextEditingController();
  TextEditingController startDateController = TextEditingController();
  TextEditingController endDateController = TextEditingController();
  TextEditingController startTimeController = TextEditingController();
  TextEditingController endTimeDateController = TextEditingController();
  TextEditingController timeZoneController = TextEditingController();
  TextEditingController hologramController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            Constants.meetings,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: formKey,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizeBoxHeight16(),
                    const SizeBoxHeight16(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                        Image.asset(
                          'assets/images/app_logo.png',
                          fit: BoxFit.contain,
                          height: 50,
                        ),
                        const IconButton(
                          onPressed: null,
                          icon: SizedBox(),
                        ),
                      ],
                    ),
                    const SizeBoxHeight16(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppSimpleButton(
                          onTap: () {},
                          btnText: 'Instant Meeting',
                        ),
                        const SizeBoxWidth12(),
                        AppGradiantButton(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return const QuickMeetingDialog();
                              },
                            );
                          },
                          btnText: 'Schedule Meeting',
                        ),
                      ],
                    ),
                    const SizeBoxHeight16(),
                    const Padding(
                      padding: EdgeInsets.only(left: 24.0),
                      child: AppText(
                        'Purpose Of Meeting',
                        color: Colors.white,
                      ),
                    ),
                    const SizeBoxHeight4(),
                    Card(
                      elevation: 10,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: AppField(
                          controller: titleController,
                          hint: 'Enter Meeting Title',
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
                    const Padding(
                      padding: EdgeInsets.only(left: 24.0),
                      child: AppText(
                        'Meeting Start Date',
                        color: Colors.white,
                      ),
                    ),
                    const SizeBoxHeight4(),
                    Card(
                      elevation: 10,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: AppField(
                          controller: startDateController,
                          hint: 'Enter Meeting Start Date',
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
                    const Padding(
                      padding: EdgeInsets.only(left: 24.0),
                      child: AppText(
                        'Meeting End Date',
                        color: Colors.white,
                      ),
                    ),
                    const SizeBoxHeight4(),
                    Card(
                      elevation: 10,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: AppField(
                          controller: endDateController,
                          hint: 'Enter Meeting End Date',
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
                    const Padding(
                      padding: EdgeInsets.only(left: 24.0),
                      child: AppText(
                        'Meeting Start Time',
                        color: Colors.white,
                      ),
                    ),
                    const SizeBoxHeight4(),
                    Card(
                      elevation: 10,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: AppField(
                          controller: startTimeController,
                          hint: 'Enter Meeting Start Time',
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
                    const Padding(
                      padding: EdgeInsets.only(left: 24.0),
                      child: AppText(
                        'Meeting End Time',
                        color: Colors.white,
                      ),
                    ),
                    const SizeBoxHeight4(),
                    Card(
                      elevation: 10,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: AppField(
                          controller: endTimeDateController,
                          hint: 'Enter Meeting End Time',
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
                    const Padding(
                      padding: EdgeInsets.only(left: 24.0),
                      child: AppText(
                        'Meeting Time Zone',
                        color: Colors.white,
                      ),
                    ),
                    const SizeBoxHeight4(),
                    Card(
                      elevation: 10,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Center(
                          child: AppField(
                            controller: timeZoneController,
                            hint: 'Enter Meeting Time Zone',
                            validator: (val) {
                              if (val == null || val.trim().isEmpty) {
                                return "Required";
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                    ),
                    const SizeBoxHeight16(),
                    const Padding(
                      padding: EdgeInsets.only(left: 24.0),
                      child: AppText(
                        'Need Hologram',
                        color: Colors.white,
                      ),
                    ),
                    const SizeBoxHeight4(),
                    Card(
                      elevation: 10,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: AppField(
                          controller: hologramController,
                          hint: 'Enter',
                          validator: (val) {
                            if (val == null || val.trim().isEmpty) {
                              return "Password is required";
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    const SizeBoxHeight16(),
                    Align(
                      alignment: Alignment.center,
                      child: AppGradiantButton(
                        width: 200,
                        onTap: () {
                          Navigator.pushNamed(context, '/InstantMeetingScreen');
                        },
                        btnText: 'Schedule',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
