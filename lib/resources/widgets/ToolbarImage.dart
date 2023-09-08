import 'package:esm/resources/Widgets/sized_boxes.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class ToolbarImage extends StatelessWidget implements PreferredSizeWidget {
  final AppBar appBar;

  const ToolbarImage({Key? key, required this.appBar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (AppBar(
      elevation: 0,
      automaticallyImplyLeading: true,
      backgroundColor: AppColors.primaryColor,
      centerTitle: true,
      title: Image.asset(
        'assets/images/app_logo.png',
        fit: BoxFit.contain,
        height: 50,
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
