import 'package:esm/Widgets/HeadingTextWidget.dart';
import 'package:esm/Widgets/NormalTextWidget.dart';
import 'package:esm/Widgets/ToolbarImage.dart';
import 'package:esm/utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class AboutUs extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AboutState();
  }
}

class AboutState extends State<AboutUs> {
  String data = '';

  fetchFileData() async {
    String responsetext;
    responsetext = await rootBundle.loadString("assets/doc/aboutus.txt");
    setState(() {
      data = responsetext;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    fetchFileData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: ToolbarImage(
        appBar: AppBar(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeadingTextWidget(
                  input: 'About Us',
                  fontsize: 22,
                  fontWeight: FontWeight.w700,
                  textcolor: AppColors.black,
                ),
                NormalTextWidget(
                  input: data,
                  fontsize: 12,
                  fontWeight: FontWeight.w700,
                  textcolor: AppColors.black,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
