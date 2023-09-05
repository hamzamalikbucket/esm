
import 'package:esm/utils/app_colors.dart';
import 'package:flutter/material.dart';



class ToolbarImage extends StatelessWidget implements PreferredSizeWidget{
  final AppBar appBar;
  const ToolbarImage({Key? key,required this.appBar})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return (
        AppBar(
          automaticallyImplyLeading: true,

          backgroundColor: AppColors.primaryColor,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/image26.png',
                fit: BoxFit.contain,
                height: 50,
              ),

            ],
          ),
          iconTheme: IconThemeData(
            color:AppColors.black,

            //change your color here
          ),
        ));
  }

  @override
  Size get preferredSize =>  Size.fromHeight(appBar.preferredSize.height);


}