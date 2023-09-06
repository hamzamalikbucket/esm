import 'package:flutter/material.dart';

import '../../utils/Constants.dart';

class SliderView extends StatelessWidget {
  final Function(String) onItemClick;
  bool afterJoining;

   SliderView({Key? key, required this.onItemClick, required this.afterJoining}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(top: 30),
      child: afterJoining ? ListView(
        children: <Widget>[
          Image.asset("assets/images/app_logo.png", height: 70, width: 70,),
          const SizedBox(
            height: 20,
          ),
          ...[
            Menu('Home', '', (){}),
            Menu('Quick Meetings & Hologram', 'Free Unlimited, time & participents', (){}),
            Menu('Events & Hologram', 'Free Unlimited, time & participents', (){}),
            Menu('Join Event Workers', 'Get Paid', (){}),
            Menu('Join Hologram Engineers', 'Make Money', (){}),
            Menu('Seller add used/new Products/Services', 'Make Sales', (){}),
            Menu('Find any event In your area', 'Make GPS default in you present location', (){}),
            Menu('Find any event by location', 'Search by address, city, state or country', (){}),
            Menu('Tip eSM', 'All Free But You Can Tip Us', (){}),
            Menu('Find Event', 'Worldwide & Attend', (){}),
            Menu('Contact Us', '', (){Navigator.pushNamed(context, Constants.contactUsScreen);}),
            Menu('About Us', '', (){Navigator.pushNamed(context, Constants.aboutUsScreen);}),
            Menu('FAQ', '', (){}),
            Menu('Start Shopping', '', (){}),
          ]
              .map((menu) => _SliderMenuItem(
            title: menu.title,
            subTitle: menu.subTitle,
            onTap: onItemClick,))
              .toList(),
        ],
      ) : ListView(
        children: <Widget>[
          Image.asset("assets/images/app_logo.png", height: 70, width: 70,),
          const SizedBox(
            height: 20,
          ),
          ...[
            Menu('Home', '', (){}),
            Menu('Quick Meetings & Hologram', 'Free Unlimited, time & participents', (){}),
            Menu('Events & Hologram', 'Free Unlimited, time & participents', (){}),
            Menu('Join Event Workers', 'Get Paid', (){}),
            Menu('Join Hologram Engineers', 'Make Money', (){}),
            Menu('Join Sellers', 'Make Sales', (){}),
            Menu('About Us', '', (){Navigator.pushNamed(context, Constants.aboutUsScreen);}),
            Menu('FAQ', '', (){}),
          ]
              .map((menu) => _SliderMenuItem(
            title: menu.title,
            subTitle: menu.subTitle,
            onTap: onItemClick,))
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

  const _SliderMenuItem(
      {Key? key,
        required this.title,
        required this.subTitle,
        required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: (){onTap;},
        splashColor: Colors.lightBlue,
        child: Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.all(0),  // Remove any margin
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,
                      style: const TextStyle(
                          color: Colors.blue, fontSize: 14, fontWeight: FontWeight.w500),),
                    Text(subTitle,
                      style: const TextStyle(
                        color: Colors.blue, fontSize: 12,),),
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
  final Function onTapp;
  Menu(this.title, this.subTitle, this.onTapp);
}