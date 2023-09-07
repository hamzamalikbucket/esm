import 'package:esm/Models/PostModel.dart';
import 'package:esm/Widgets/NormalTextWidget.dart';
import 'package:esm/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:esm/utils/Constants.dart';
import 'package:flutter_svg/svg.dart';
import 'drawer_screen.dart';
import 'package:badges/badges.dart' as badges;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

List<PostModel> postList = [
  PostModel(
      "assets/images/dummypost.png",
      "Hello",
      "265",
      "assets/images/profile.png",
      "Buland Khan",
      "Lahore,Pakistan",
      "9 MINITUES AGO"),
  PostModel(
      "assets/images/dummyPost2.png",
      "Hello",
      "265",
      "assets/images/profile.png",
      "Martin Madan",
      "Lahore,Pakistan",
      "9 MINITUES AGO"),
];

class _HomeScreenState extends State<HomeScreen> {
  bool afterJoining = true;
  @override
  Widget build(BuildContext context) {
    final GlobalKey<SliderDrawerState> _sliderDrawerKey =
        GlobalKey<SliderDrawerState>();
    String title = "Home";

    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SliderDrawer(
          appBar: SliderAppBar(
              appBarColor: Colors.white,
              title: Text(title,
                  style: const TextStyle(
                      fontSize: 22, fontWeight: FontWeight.w700))),
          key: _sliderDrawerKey,
          sliderOpenSize: 280,
          slider: SliderView(
            onItemClick: (title) {
              _sliderDrawerKey.currentState!.closeSlider();
              setState(() {
                title = title;
              });
              print("jkadgfa");
            }, //afterJoining: afterJoining,
          ),
          child: _AuthorList()),
    );
  }
}

class _AuthorList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return

      ListView.builder(
        itemCount: postList.length,
        addRepaintBoundaries: true,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: AlwaysScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          PostModel pM = postList[index];
          return Container(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(
                        "assets/images/profile.png",
                      ),
                      /*child: SvgPicture.asset(
                          pM.userImg,
                        ),*/
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 5,
                        ),
                        NormalTextWidget(
                          input: pM.userName,
                          fontsize: 16,
                          fontWeight: FontWeight.w700,
                          textcolor: AppColors.black,
                        ),
                        NormalTextWidget(
                          input: pM.userLocation,
                          fontsize: 12,
                          fontWeight: FontWeight.w500,
                          textcolor: AppColors.greyHintColor,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Image.asset(
                pM.postImage,
                height: 299,
                fit: BoxFit.cover,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        badges.Badge(
                            position: badges.BadgePosition.topEnd(top: -12, end: -12),
                          badgeStyle: badges.BadgeStyle(
                              shape: badges.BadgeShape.circle,

                              padding: EdgeInsets.all(5),
                              borderRadius: BorderRadius.circular(2),
                              borderSide: BorderSide(color: Colors.transparent, width: 1),


          ),
                          badgeContent: Text(pM.likeCounts,style: TextStyle(color:AppColors.primaryColor,fontSize:6.5,fontWeight: FontWeight.w300),),

                          child: SvgPicture.asset(
                            Constants.favouriteIcon,
                          )
                        ),
                        SizedBox(width: 10),
                        SvgPicture.asset(
                          Constants.commentIcon,
                        ),
                        SizedBox(width: 10),
                        SvgPicture.asset(
                          Constants.viewIcon,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(
                      Constants.shareBtnBlue,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row(
                  children: [
                    NormalTextWidget(
                      input: pM.likeCounts + " " + "Likes",
                      fontsize: 12,
                      fontWeight: FontWeight.w500,
                      textcolor: AppColors.black,
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 8,
                  ),
                  NormalTextWidget(
                    input: pM.userName,
                    fontsize: 16,
                    fontWeight: FontWeight.w700,
                    textcolor: AppColors.black,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  NormalTextWidget(
                    input: pM.postDescription,
                    fontsize: 16,
                    fontWeight: FontWeight.w500,
                    textcolor: AppColors.black,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: NormalTextWidget(
                  input: pM.postTime,
                  fontsize: 10,
                  fontWeight: FontWeight.w700,
                  textcolor: AppColors.greyHintColor,
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ));
        });
  }
}
