import 'package:esm/Models/post_model.dart';
import 'package:esm/resources/Widgets/app_field.dart';
import 'package:esm/resources/Widgets/app_text.dart';
import 'package:esm/resources/Widgets/sized_boxes.dart';
import 'package:esm/resources/utils/app_colors.dart';
import 'package:esm/resources/utils/constants.dart';
import 'package:flutter/material.dart';
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
  TextEditingController rpcController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
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
    );
  }
}
