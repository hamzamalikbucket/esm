import 'package:esm/Models/post_model.dart';
import 'package:esm/modules/Screens/HostDetails/Events/HostEvents.dart';

import 'package:esm/modules/Screens/HostDetails/HostPosts.dart';
import 'package:esm/modules/Screens/HostDetails/HostProfile.dart';
import 'package:esm/modules/Screens/HostDetails/celeberations_screen.dart';
import 'package:esm/resources/Widgets/app_text.dart';
import 'package:esm/resources/utils/Constants.dart';
import 'package:esm/resources/utils/app_colors.dart';
import 'package:esm/resources/widgets/ToolbarImage.dart';
import 'package:esm/resources/widgets/sized_boxes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/cupertino.dart';
class DetailTab extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TabState();
  }


}
class TabState extends State <DetailTab>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
  return  DefaultTabController(
    length: 4,
    child: Scaffold(
      appBar: AppBar(

        bottom: TabBar(
          tabs: [
            Tab(text: 'Details'),
            Tab(text: 'Post'),
            Tab(text: 'Events'),
            Tab(text: 'Celebrations'),
          ],
        ),
      ),
      body: TabBarView(
        children: [
          HostProfile(),
          HostPost(),
          HostEvents(),
          CelerbationsScreen(),
        ],
      ),
    ),
  );

  }


}