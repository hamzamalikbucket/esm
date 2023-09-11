import 'dart:io';

import 'package:flutter/material.dart';

import 'package:esm/resources/Widgets/app_text.dart';

import 'package:esm/resources/utils/app_colors.dart';

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
//`true` if you want Flutter to automatically add Back Button when needed,
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
          iconTheme: IconThemeData(
            color: AppColors.black,

            //change your color here
          ),
        ));
  }

  @override
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}
