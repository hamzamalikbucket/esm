import 'package:esm/Models/hologram_model.dart';
import 'package:esm/config/functions/app_date_picker.dart';
import 'package:esm/resources/Widgets/ToolbarImage.dart';
import 'package:esm/resources/Widgets/app_field.dart';
import 'package:esm/resources/Widgets/app_text.dart';
import 'package:esm/resources/Widgets/sized_boxes.dart';
import 'package:esm/resources/utils/app_colors.dart';
import 'package:esm/resources/widgets/buttons/app_button.dart';
import 'package:esm/resources/widgets/buttons/app_drop_down_button.dart';
import 'package:esm/resources/widgets/buttons/radio_button.dart';
import 'package:esm/resources/widgets/profile_image.dart';
import 'package:flutter/material.dart';
import 'package:map_location_picker/map_location_picker.dart';

class LiveEventScreen extends StatefulWidget {
  const LiveEventScreen({super.key});

  @override
  State<LiveEventScreen> createState() => _LiveEventScreenState();
}

class _LiveEventScreenState extends State<LiveEventScreen> {
  TextEditingController eventTitleController = TextEditingController();
  TextEditingController eventCategoryController = TextEditingController();
  TextEditingController eventTypeController = TextEditingController();
  TextEditingController dressCodeController = TextEditingController();
  TextEditingController startDateController = TextEditingController();
  TextEditingController endDateController = TextEditingController();
  TextEditingController startTimeController = TextEditingController();
  TextEditingController endTimeController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController noteController = TextEditingController();
  TimeZone? timeZone;
  EventWorker? eventWorker;
  bool validateTimeZone = false;
  bool validateEventWorker = false;
  int groupValueReceive = 0;
  int groupValueTicketing = 0;
  int groupValueHologram = 0;
  int groupValueAccount = 0;
  String address = "null";
  String autocompletePlace = "null";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolbarImage(
        appBar: AppBar(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Align(
                alignment: Alignment.center,
                child: AppProfileImage(
                  title: 'profile',
                  height: 100,
                  width: 100,
                  imagePicker: true,
                ),
              ),
              const SizeBoxHeight16(),
              const Padding(
                padding: EdgeInsets.only(left: 24.0),
                child: AppText(
                  'Event Title',
                  color: Colors.black,
                ),
              ),
              const SizeBoxHeight4(),
              Stack(
                children: [
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.greyBgColor.withOpacity(1),
                          spreadRadius: 1,
                          blurRadius: 15,
                          // blur radius
                          offset: const Offset(5, 5),
                        ),
                      ],
                    ),
                  ),
                  AppIconField(
                    controller: eventTitleController,
                    hint: 'Enter Event Title',
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    validator: (val) {
                      if (val == null || val.trim().isEmpty) {
                        return "Required";
                      }
                      return null;
                    },
                  ),
                ],
              ),
              const SizeBoxHeight16(),
              const Padding(
                padding: EdgeInsets.only(left: 24.0),
                child: AppText(
                  'Event Category',
                  color: Colors.black,
                ),
              ),
              const SizeBoxHeight4(),
              Stack(
                children: [
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.greyBgColor.withOpacity(1),
                          spreadRadius: 1,
                          blurRadius: 15,
                          // blur radius
                          offset: const Offset(5, 5),
                        ),
                      ],
                    ),
                  ),
                  AppIconField(
                    controller: eventCategoryController,
                    hint: 'Enter Event Category',
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    validator: (val) {
                      if (val == null || val.trim().isEmpty) {
                        return "Required";
                      }
                      return null;
                    },
                  ),
                ],
              ),
              const SizeBoxHeight16(),
              const Padding(
                padding: EdgeInsets.only(left: 24.0),
                child: AppText(
                  'Event Type',
                  color: Colors.black,
                ),
              ),
              const SizeBoxHeight4(),
              Stack(
                children: [
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.greyBgColor.withOpacity(1),
                          spreadRadius: 1,
                          blurRadius: 15,
                          // blur radius
                          offset: const Offset(5, 5),
                        ),
                      ],
                    ),
                  ),
                  AppIconField(
                    controller: eventTypeController,
                    hint: 'Enter Event Type',
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    validator: (val) {
                      if (val == null || val.trim().isEmpty) {
                        return "Required";
                      }
                      return null;
                    },
                  ),
                ],
              ),
              const SizeBoxHeight16(),
              const Padding(
                padding: EdgeInsets.only(left: 24.0),
                child: AppText(
                  'Dress Code',
                  color: Colors.black,
                ),
              ),
              const SizeBoxHeight4(),
              Stack(
                children: [
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.greyBgColor.withOpacity(1),
                          spreadRadius: 1,
                          blurRadius: 15,
                          // blur radius
                          offset: const Offset(5, 5),
                        ),
                      ],
                    ),
                  ),
                  AppIconField(
                    controller: dressCodeController,
                    hint: 'Enter Dress Code',
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    validator: (val) {
                      if (val == null || val.trim().isEmpty) {
                        return "Required";
                      }
                      return null;
                    },
                  ),
                ],
              ),
              const SizeBoxHeight16(),
              const Padding(
                padding: EdgeInsets.only(left: 24.0),
                child: AppText(
                  'Event Start Date',
                  color: Colors.black,
                ),
              ),
              const SizeBoxHeight4(),
              Stack(
                children: [
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.greyBgColor.withOpacity(1),
                          spreadRadius: 1,
                          blurRadius: 15,
                          // blur radius
                          offset: const Offset(5, 5),
                        ),
                      ],
                    ),
                  ),
                  AppIconField(
                    onTap: () async {
                      String date = await AppDateTimePicker.getDate(context);
                      setState(() {
                        startDateController.text = date;
                      });
                    },
                    readOnly: true,
                    controller: dressCodeController,
                    hint: 'Select Event Start Date',
                    validator: (val) {
                      if (val == null || val.trim().isEmpty) {
                        return "Required";
                      }
                      return null;
                    },
                  ),
                ],
              ),
              const SizeBoxHeight16(),
              const Padding(
                padding: EdgeInsets.only(left: 24.0),
                child: AppText(
                  'Event End Date',
                  color: Colors.black,
                ),
              ),
              const SizeBoxHeight4(),
              Stack(
                children: [
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.greyBgColor.withOpacity(1),
                          spreadRadius: 1,
                          blurRadius: 15,
                          // blur radius
                          offset: const Offset(5, 5),
                        ),
                      ],
                    ),
                  ),
                  AppIconField(
                    onTap: () async {
                      String date = await AppDateTimePicker.getDate(context);
                      setState(() {
                        endDateController.text = date;
                      });
                    },
                    readOnly: true,
                    controller: endDateController,
                    hint: 'Select Event End Date',
                    validator: (val) {
                      if (val == null || val.trim().isEmpty) {
                        return "Required";
                      }
                      return null;
                    },
                  ),
                ],
              ),
              const SizeBoxHeight16(),
              const Padding(
                padding: EdgeInsets.only(left: 24.0),
                child: AppText(
                  'Event Start Time',
                  color: Colors.black,
                ),
              ),
              const SizeBoxHeight4(),
              Stack(
                children: [
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.greyBgColor.withOpacity(1),
                          spreadRadius: 1,
                          blurRadius: 15,
                          // blur radius
                          offset: const Offset(5, 5),
                        ),
                      ],
                    ),
                  ),
                  AppIconField(
                    onTap: () async {
                      String time = await AppDateTimePicker.getTime(context);
                      setState(() {
                        startTimeController.text = time;
                      });
                    },
                    readOnly: true,
                    controller: startTimeController,
                    hint: 'Select Start Time',
                    validator: (val) {
                      if (val == null || val.trim().isEmpty) {
                        return "Required";
                      }
                      return null;
                    },
                  ),
                ],
              ),
              const SizeBoxHeight16(),
              const Padding(
                padding: EdgeInsets.only(left: 24.0),
                child: AppText(
                  'Event End Time',
                  color: Colors.black,
                ),
              ),
              const SizeBoxHeight4(),
              Stack(
                children: [
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.greyBgColor.withOpacity(1),
                          spreadRadius: 1,
                          blurRadius: 15,
                          // blur radius
                          offset: const Offset(5, 5),
                        ),
                      ],
                    ),
                  ),
                  AppIconField(
                    onTap: () async {
                      String time = await AppDateTimePicker.getTime(context);
                      setState(() {
                        endTimeController.text = time;
                      });
                    },
                    readOnly: true,
                    controller: endTimeController,
                    hint: 'Select End Time',
                    validator: (val) {
                      if (val == null || val.trim().isEmpty) {
                        return "Required";
                      }
                      return null;
                    },
                  ),
                ],
              ),
              const SizeBoxHeight16(),
              const Padding(
                padding: EdgeInsets.only(left: 24.0),
                child: AppText(
                  'Event Location',
                  color: Colors.black,
                ),
              ),
              const SizeBoxHeight4(),
              Stack(
                children: [
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.greyBgColor.withOpacity(1),
                          spreadRadius: 1,
                          blurRadius: 15,
                          // blur radius
                          offset: const Offset(5, 5),
                        ),
                      ],
                    ),
                  ),
                  AppIconField(
                    onTap: () async {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MapLocationPicker(
                            apiKey: "AIzaSyD9uEMmV8BnVSJorDB0ZXrZDGYykE1JEFE",
                            popOnNextButtonTaped: true,
                            currentLatLng: const LatLng(29.146727, 76.464895),
                            onNext: (GeocodingResult? result) {
                              if (result != null) {
                                setState(() {
                                  address = result.formattedAddress ?? "";
                                });
                              }
                            },
                            onSuggestionSelected:
                                (PlacesDetailsResponse? result) {
                              if (result != null) {
                                setState(() {
                                  autocompletePlace =
                                      result.result.formattedAddress ?? "";
                                });
                              }
                            },
                          ),
                        ),
                      );
                    },
                    readOnly: true,
                    controller: locationController,
                    hint: 'Select Event Location',
                    validator: (val) {
                      if (val == null || val.trim().isEmpty) {
                        return "Required";
                      }
                      return null;
                    },
                  ),
                ],
              ),
              const SizeBoxHeight16(),
              const Padding(
                padding: EdgeInsets.only(left: 24.0),
                child: AppText(
                  'Time Zone',
                  color: Colors.black,
                ),
              ),
              const SizeBoxHeight4(),
              Stack(
                children: [
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.greyBgColor.withOpacity(1),
                          spreadRadius: 1,
                          blurRadius: 15,
                          // blur radius
                          offset: const Offset(5, 5),
                        ),
                      ],
                    ),
                  ),
                  AppDropDownFields<TimeZone>(
                    hint: "Select Time Zone",
                    value: timeZone,
                    items: TimeZone.timeZoneList,
                    onChange: (v) {
                      setState(() {
                        timeZone = v;
                      });
                    },
                    applyValidation: validateTimeZone,
                    errorMessage: 'Required',
                  ),
                ],
              ),
              const SizeBoxHeight16(),
              const Padding(
                padding: EdgeInsets.only(left: 24.0),
                child: AppText(
                  'Choose Event Worker',
                  color: Colors.black,
                ),
              ),
              const SizeBoxHeight4(),
              Stack(
                children: [
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.greyBgColor.withOpacity(1),
                          spreadRadius: 1,
                          blurRadius: 15,
                          // blur radius
                          offset: const Offset(5, 5),
                        ),
                      ],
                    ),
                  ),
                  AppDropDownFields<EventWorker>(
                    hint: "Choose Event Worker",
                    value: eventWorker,
                    items: EventWorker.eventWorkerList,
                    onChange: (v) {
                      setState(() {
                        eventWorker = v;
                      });
                    },
                    applyValidation: validateEventWorker,
                    errorMessage: 'Required',
                  ),
                ],
              ),
              const SizeBoxHeight16(),
              const Padding(
                padding: EdgeInsets.only(left: 24.0),
                child: AppText(
                  'Note',
                  color: Colors.black,
                ),
              ),
              const SizeBoxHeight4(),
              Stack(
                children: [
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.greyBgColor.withOpacity(1),
                          spreadRadius: 1,
                          blurRadius: 15,
                          // blur radius
                          offset: const Offset(5, 5),
                        ),
                      ],
                    ),
                  ),
                  AppIconField(
                    controller: noteController,
                    hint: 'Enter Note',
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    validator: (val) {
                      if (val == null || val.trim().isEmpty) {
                        return "Required";
                      }
                      return null;
                    },
                  ),
                ],
              ),
              const SizeBoxHeight16(),
              const Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: AppText('Do You Want to Receive Money Gifts/Spray? *'),
              ),
              Row(
                children: [
                  AppRadioButtonList(
                    groupValue: groupValueReceive,
                    value: 1,
                    onChanged: (v) {
                      setState(() {
                        groupValueReceive = v;
                      });
                    },
                    text: "Yes",
                  ),
                  AppRadioButtonList(
                    groupValue: groupValueReceive,
                    value: 2,
                    onChanged: (v) {
                      setState(() {
                        groupValueReceive = v;
                      });
                    },
                    text: "No",
                  ),
                ],
              ),
              const SizeBoxHeight16(),
              const Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: AppText('Is this a ticketing or gate pass Event? *'),
              ),
              Row(
                children: [
                  AppRadioButtonList(
                    groupValue: groupValueTicketing,
                    value: 1,
                    onChanged: (v) {
                      setState(() {
                        groupValueTicketing = v;
                      });
                    },
                    text: "Yes",
                  ),
                  AppRadioButtonList(
                    groupValue: groupValueTicketing,
                    value: 2,
                    onChanged: (v) {
                      setState(() {
                        groupValueTicketing = v;
                      });
                    },
                    text: "No",
                  ),
                ],
              ),
              const SizeBoxHeight16(),
              const Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: AppText('Do you want to make Hologram? *'),
              ),
              Row(
                children: [
                  AppRadioButtonList(
                    groupValue: groupValueHologram,
                    value: 1,
                    onChanged: (v) {
                      setState(() {
                        groupValueHologram = v;
                      });
                    },
                    text: "Yes",
                  ),
                  AppRadioButtonList(
                    groupValue: groupValueHologram,
                    value: 2,
                    onChanged: (v) {
                      setState(() {
                        groupValueHologram = v;
                      });
                    },
                    text: "No",
                  ),
                ],
              ),
              const SizeBoxHeight16(),
              const Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: AppText('Select Account To Receive Gifts *'),
              ),
              Row(
                children: [
                  AppRadioButtonList(
                    groupValue: groupValueAccount,
                    value: 1,
                    onChanged: (v) {
                      setState(() {
                        groupValueAccount = v;
                      });
                    },
                    text: "Bank",
                  ),
                  AppRadioButtonList(
                    groupValue: groupValueAccount,
                    value: 2,
                    onChanged: (v) {
                      setState(() {
                        groupValueAccount = v;
                      });
                    },
                    text: "Paypal",
                  ),
                ],
              ),
              const SizeBoxHeight16(),
              Align(
                alignment: Alignment.center,
                child: AppGradiantButton(
                  onTap: () {},
                  btnText: 'My Event',
                  width: 150,
                ),
              ),
              const SizeBoxHeight16(),
              const SizeBoxHeight16(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppGradiantButton(
                    onTap: () {},
                    btnText: 'Cancel',
                    width: 150,
                  ),
                  AppGradiantButton(
                    onTap: () {},
                    btnText: 'Create',
                    width: 150,
                  ),
                ],
              ),
              const SizeBoxHeight16(),
              const SizeBoxHeight16(),
            ],
          ),
        ),
      ),
    );
  }
}
