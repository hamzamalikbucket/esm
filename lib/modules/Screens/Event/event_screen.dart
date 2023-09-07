import 'package:esm/Models/EventModel.dart';
import 'package:esm/resources/Widgets/NormalTextWidget.dart';
import 'package:esm/resources/Widgets/app_text.dart';
import 'package:esm/resources/utils/Constants.dart';
import 'package:esm/resources/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EventScreen extends StatefulWidget {
  const EventScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return EventState();
  }
}

class EventState extends State<EventScreen> {
  List<EventModel> eventList = [
    EventModel(
        "assets/images/eventImg.png",
        "Live",
        "In publishing and graphic designing lorem ipsum ",
        "12:30 pm - 04:00 pm",
        "16-12-2023",
        "The University of World, USA",
        "assets/images/profile.png",
        "Buland Khan",
        "Lahore,Pakistan",
        "Not responded",
        true),
    EventModel(
        "assets/images/eventExmp.png",
        "Live",
        "In publishing and graphic designing lorem ipsum ",
        "12:30 pm - 04:00 pm",
        "16-12-2023",
        "The University of World, USA",
        "assets/images/profile.png",
        "Buland Khan",
        "Lahore,Pakistan",
        "Not responded",
        false),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: eventList.length,
          addRepaintBoundaries: true,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          physics: const AlwaysScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            EventModel eVents = eventList[index];
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(
                    8.0,
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(
                          eVents.eventHostImg,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Column(
                        children: [
                          const SizedBox(
                            height: 5,
                          ),
                          AppText(
                            eVents.eventHostName,
                            size: 16,
                            fontWeight: FontWeight.w700,
                            color: AppColors.black,
                          ),
                          AppText(
                            eVents.eventHostLocation,
                            size: 12,
                            fontWeight: FontWeight.w500,
                            color: AppColors.greyHintColor,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 12, left: 10),
                        child: (eVents.eventPricestatus)
                            ? SvgPicture.asset(
                                Constants.paidIcon,
                              )
                            : SvgPicture.asset(
                                Constants.freeIcon,
                              ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                    height: 299,
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      children: [
                        Image.asset(
                          eVents.eventImg,
                          fit: BoxFit.cover,
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 10, bottom: 50, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      Constants.calendarImg,
                                      height: 20,
                                    ),
                                    const SizedBox(width: 10),
                                    AppText(
                                      eVents.eventDate,
                                      size: 10,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.primaryColor,
                                    ),
                                    const SizedBox(width: 20),
                                    SvgPicture.asset(
                                      Constants.clockImg,
                                      height: 20,
                                    ),
                                    const SizedBox(width: 10),
                                    NormalTextWidget(
                                      input: eVents.eventTime,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      textColor: AppColors.primaryColor,
                                    ),
                                  ],
                                ),
                                SvgPicture.asset(
                                  Constants.shareBtnBlue,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      const AppText(
                        "Invitation Status:",
                        size: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.black,
                      ),
                      AppText(
                        eVents.eventInvitationStatus,
                        size: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.redColor,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        Constants.locationImg,
                      ),
                      AppText(
                        eVents.eventLocation,
                        size: 10,
                        fontWeight: FontWeight.w400,
                        color: AppColors.bluecolor,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 8, bottom: 8, top: 8),
                  child: AppText(
                    eVents.eventDescription,
                    size: 10,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
