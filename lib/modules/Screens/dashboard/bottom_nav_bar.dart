import 'package:esm/resources/Widgets/app_text.dart';
import 'package:esm/resources/Widgets/sized_boxes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';

import 'home/event_screen.dart';
import 'home/home_screen.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BottomNavigationBarScreenState();
  }
}

class BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int _selectedIndex = 0;
  final GlobalKey<SliderDrawerState> sliderDrawerKey =
      GlobalKey<SliderDrawerState>();
  bool afterJoining = true;
  String? home = 'Home';

  final List<String> selectedImagePaths = [
    'assets/images/home_slected.png',
    'assets/images/fav_slected.png',
    'assets/images/add.png',
    'assets/images/video-play_slected.png',
    'assets/images/person_slected.png',
  ];

  final List<String> unselectedImagePaths = [
    'assets/images/home_unslwcted.png',
    'assets/images/fav_unslected.png',
    'assets/images/add.png',
    'assets/images/video-play.png',
    'assets/images/profile_unslected.png',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (_selectedIndex == 0) {
        setState(() {
          home = 'Home';
        });
      } else if (_selectedIndex == 1) {
        setState(() {
          home = 'My Event';
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: List.generate(
          selectedImagePaths.length,
          (index) => BottomNavigationBarItem(
            icon: Image.asset(
              _selectedIndex == index
                  ? selectedImagePaths[index]
                  : unselectedImagePaths[index],
              width: index == 2 ? 35.0 : 24.0,
              height: index == 2 ? 35.0 : 24.0,
            ),
            label: '',
          ),
        ),
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: SliderDrawer(
          appBar: SliderAppBar(
            isTitleCenter: true,
            appBarColor: Colors.white,
            title: AppText(
              home ?? '',
              size: 22,
              fontWeight: FontWeight.w700,
            ),
          ),
          key: sliderDrawerKey,
          //sliderOpenSize: 280,
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
          child: IndexedStack(
            index: _selectedIndex,
            children: const [
              // Replace these with your content screens
              HomeScreen(),
              EventScreen(),
              AddScreen(),
              CartScreen(),
              ProfileScreen(),
            ],
          ),
        ),
      ),
    );
  }
}

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Search Screen'),
    );
  }
}

class AddScreen extends StatelessWidget {
  const AddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Add Screen'),
    );
  }
}

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Cart Screen'),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Profile Screen'),
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
            Menu('Seller add used/new Products/Services', 'Make Money', () {}),
            Menu('Find any event In your area',
                'Make GPS default in you present location', () {}),
            Menu('Find any event by location',
                'Search by address, city, state or country', () {}),
            Menu('All Free But You Can Tip Us', '', () {}),
            Menu('Worldwide & Attend', '', () {}),
            Menu('Contact Us', '', () {
              onItemClick('Contact Us');
              Navigator.pushNamed(context, '/ContactUsScreen');
            }),
            Menu('About Us', '', () {
              onItemClick('About Us');
              Navigator.pushNamed(context, '/AboutUsScreen');
            }),
            Menu('FAQ', '', () {}),
            Menu('Start Shopping', '', () {}),
          ]
              .map((menu) => _SliderMenuItem(
                    title: menu.title,
                    subTitle: menu.subTitle,
                    onTap: menu.onTap,
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
  final Function? onTap;

  const _SliderMenuItem({
    Key? key,
    required this.title,
    required this.subTitle,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap!();
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
    );
  }
}

class Menu {
  final String title;
  final String subTitle;
  final Function onTap;

  Menu(this.title, this.subTitle, this.onTap);
}
