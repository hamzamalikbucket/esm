import 'package:esm/Models/post_model.dart';
import 'package:esm/resources/Widgets/app_text.dart';
import 'package:esm/resources/Widgets/sized_boxes.dart';
import 'package:esm/resources/utils/app_colors.dart';
import 'package:esm/resources/utils/constants.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

List<PostModel> postList = [
  PostModel(
      postImage: "assets/images/dummypost.png",
      postDescription: "Hello",
      likeCounts: "265",
      userImg: "assets/images/profile.png",
      userName: "Buland Khan",
      userLocation: "Lahore,Pakistan",
      postTime: "9 MINITUES AGO"),
  PostModel(
      postImage: "assets/images/dummyPost2.png",
      postDescription: "Hello",
      likeCounts: "265",
      userImg: "assets/images/profile.png",
      userName: "Buland Khan",
      userLocation: "Lahore,Pakistan",
      postTime: "9 MINITUES AGO"),
];

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<SliderDrawerState> sliderDrawerKey =
      GlobalKey<SliderDrawerState>();
  bool afterJoining = true;
  String title = "Home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: SliderDrawer(
          appBar: SliderAppBar(
            appBarColor: Colors.white,
            title: AppText(
              title,
              size: 22,
              fontWeight: FontWeight.w700,
            ),
          ),
          key: sliderDrawerKey,
          sliderOpenSize: 280,
          slider: SliderView(
            onItemClick: (title) {
              sliderDrawerKey.currentState!.closeSlider();
              setState(() {
                title = title;
              });
              if (kDebugMode) {
                print("print");
              }
            },
          ),
          child: ListView.builder(
            itemCount: postList.length,
            addRepaintBoundaries: true,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: const AlwaysScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              PostModel pM = postList[index];
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(
                            "assets/images/profile.png",
                          ),
                        ),
                        const SizeBoxWidth12(),
                        Column(
                          children: [
                            const SizeBoxHeight4(),
                            AppText(
                              pM.userName,
                              size: 16,
                              fontWeight: FontWeight.w700,
                              color: AppColors.black,
                            ),
                            AppText(
                              pM.userLocation,
                              size: 12,
                              fontWeight: FontWeight.w500,
                              color: AppColors.greyHintColor,
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
                      Row(
                        children: [
                          const SizeBoxWidth12(),
                          SvgPicture.asset(
                            Constants.favouriteIcon,
                          ),
                          const SizeBoxWidth12(),
                          SvgPicture.asset(
                            Constants.commentIcon,
                          ),
                          const SizeBoxWidth12(),
                          SvgPicture.asset(
                            Constants.viewIcon,
                          ),
                        ],
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
                        AppText(
                          "${pM.likeCounts} Likes",
                          size: 12,
                          fontWeight: FontWeight.w500,
                          color: AppColors.black,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      const SizeBoxWidth8(),
                      AppText(
                        pM.userName,
                        size: 16,
                        fontWeight: FontWeight.w700,
                        color: AppColors.black,
                      ),
                      const SizeBoxWidth16(),
                      AppText(
                        pM.postDescription,
                        size: 16,
                        fontWeight: FontWeight.w500,
                        color: AppColors.black,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: AppText(
                      pM.postTime,
                      size: 10,
                      fontWeight: FontWeight.w700,
                      color: AppColors.greyHintColor,
                    ),
                  ),
                  const SizeBoxHeight12(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class SliderView extends StatelessWidget {
  final Function(String) onItemClick;

  const SliderView({
    Key? key,
    required this.onItemClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(top: 30),
      child: ListView(
        children: <Widget>[
          Image.asset(
            "assets/images/app_logo.png",
            height: 70,
            width: 70,
          ),
          const SizeBoxHeight32(),
          ...[
            Menu('Home', '', () {}),
            Menu('Quick Meetings & Hologram',
                'Free Unlimited, time & participents', () {}),
            Menu('Events & Hologram', 'Free Unlimited, time & participents',
                () {}),
            Menu('Join Event Workers', 'Get Paid', () {}),
            Menu('Join Hologram Engineers', 'Make Money', () {}),
            Menu('Seller add used/new Products/Services', 'Make Sales', () {}),
            Menu('Find any event In your area',
                'Make GPS default in you present location', () {}),
            Menu('Find any event by location',
                'Search by address, city, state or country', () {}),
            Menu('All Free But You Can Tip Us', '', () {}),
            Menu('Worldwide & Attend', '', () {}),
            Menu('Contact Us', '', () {
              Navigator.pushNamed(context, Constants.contactUsScreen);
            }),
            Menu('About Us', '', () {
              Navigator.pushNamed(context, Constants.aboutUsScreen);
            }),
            Menu('FAQ', '', () {}),
            Menu('Start Shopping', '', () {}),
          ]
              .map((menu) => _SliderMenuItem(
                    title: menu.title,
                    subTitle: menu.subTitle,
                    onTap: onItemClick,
                  ))
              .toList(),
        ],
      ),
    );
  }
}

class _SliderMenuItem extends StatelessWidget {
  final String title;
  final String subTitle;
  final Function(String) onTap;

  const _SliderMenuItem({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {
          onTap;
        },
        splashColor: Colors.lightBlue,
        child: Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.all(0), // Remove any margin
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                          color: Colors.blue,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      subTitle,
                      style: const TextStyle(
                        color: Colors.blue,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Divider(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Menu {
  final String title;
  final String subTitle;
  final Function onTap;

  Menu(this.title, this.subTitle, this.onTap);
}
