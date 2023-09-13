import 'package:esm/resources/Widgets/app_text.dart';
import 'package:esm/resources/utils/app_colors.dart';
import 'package:flutter/material.dart';

class ToolbarBack extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final AppBar appBar;

  const ToolbarBack({Key? key, required this.title,required  this.appBar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (
        AppBar(
          backgroundColor: AppColors.primaryColor,
          automaticallyImplyLeading: true,
            centerTitle: true,
          title:Column(
            children: [
              AppText(
                title,
                size: 15,
                fontWeight: FontWeight.w400,
                color: AppColors.black,
              ),
            ],
          ),
          iconTheme: const IconThemeData(
            color: AppColors.black,

            //change your color here
          ),
        ));
  }

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
