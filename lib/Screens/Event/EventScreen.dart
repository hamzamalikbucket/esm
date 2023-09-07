import 'package:esm/Models/EventModel.dart';
import 'package:flutter/material.dart';

import 'package:esm/Widgets/NormalTextWidget.dart';
import 'package:esm/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:esm/utils/Constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:badges/badges.dart' as badges;

class EventScreen extends StatefulWidget {
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
        "Lahore,Pakistan","Not responded",true),
    EventModel(
        "assets/images/eventExmp.png",
        "Live",
        "In publishing and graphic designing lorem ipsum ",
        "12:30 pm - 04:00 pm",
        "16-12-2023",
        "The University of World, USA",
        "assets/images/profile.png",
        "Buland Khan",
        "Lahore,Pakistan","Not responded",false),
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
            physics: AlwaysScrollableScrollPhysics(),
            itemBuilder:(context, index){

              EventModel eVents=eventList[index];
              return Container(
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0,),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(
                              eVents.eventHostImg,
                            ),

                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              NormalTextWidget(
                                input: eVents.eventHostName,
                                fontsize: 16,
                                fontWeight: FontWeight.w700,
                                textcolor: AppColors.black,
                              ),

                              NormalTextWidget(
                                input: eVents.eventHostLocation,
                                fontsize: 12,
                                fontWeight: FontWeight.w500,
                                textcolor: AppColors.greyHintColor,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 12,left:10),
                            child: (eVents.eventPricestatus)?SvgPicture.asset(
                              Constants.paidIcon,
                            ):SvgPicture.asset(
                              Constants.freeIcon,
                            ),
                          ),

                        ],
                      ),
                    ),
                    Container(
                      height: 299,
                      width: MediaQuery.of(context).size.width,
                      child:Stack(
                        children: [
                          Image.asset(
                            eVents.eventImg,

                            fit: BoxFit.cover,
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: const EdgeInsets.only(left:10,bottom:50,right:10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                          Constants.calendarImg,
                                          height: 20,
                                        ),
                                        SizedBox(width:10),
                                        NormalTextWidget(
                                          input: eVents.eventDate,
                                          fontsize: 10,
                                          fontWeight: FontWeight.w400,
                                          textcolor: AppColors.primaryColor,
                                        ),
                                        SizedBox(width:20),

                                        SvgPicture.asset(
                                          Constants.clockImg,
                                          height: 20,
                                        ),
                                        SizedBox(width:10),
                                        NormalTextWidget(
                                          input: eVents.eventTime,
                                          fontsize: 10,
                                          fontWeight: FontWeight.w400,
                                          textcolor: AppColors.primaryColor,
                                        ),
                                      ],
                                    ),
                                  ),

                                  SvgPicture.asset(
                                    Constants.shareBtnBlue,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )


                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:15),
                      child: Row(
                        children: [
                          NormalTextWidget(
                            input: "Invitation Status:",
                            fontsize: 14,
                            fontWeight: FontWeight.w400,
                            textcolor: AppColors.black,
                          ),
                          NormalTextWidget(
                            input: eVents.eventInvitationStatus,
                            fontsize: 14,
                            fontWeight: FontWeight.w400,
                            textcolor: AppColors.redColor,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:15),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            Constants.locationImg,
                          ),
                          NormalTextWidget(
                            input: eVents.eventLocation,
                            fontsize: 10,
                            fontWeight: FontWeight.w400,
                            textcolor: AppColors.bluecolor,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:15.0,right:8,bottom: 8,top:8),
                      child: NormalTextWidget(
                        input: eVents.eventDescription,
                        fontsize: 10,
                        fontWeight: FontWeight.w400,
                        textcolor: AppColors.black,
                      ),
                    ),




                  ],
                )


              );

        } ),
      ),
    );
  }
}
