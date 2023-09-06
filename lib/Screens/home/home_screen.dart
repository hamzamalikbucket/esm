import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';

import 'drawer_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<SliderDrawerState> sliderDrawerKey = GlobalKey<SliderDrawerState>();
  String title = "Home";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SliderDrawer(
            // appBar: SliderAppBar(
            //     appBarColor: Colors.white,
            //     title: Text(title,
            //         style: const TextStyle(
            //             fontSize: 22, fontWeight: FontWeight.w700))),
            key: sliderDrawerKey,
            sliderOpenSize: 300,
            slider: SliderView(
              onItemClick: (title) {
                sliderDrawerKey.currentState!.closeSlider();
              },
              afterJoining: true,
            ),
            child: _AuthorList()),
      ),
    );
  }
}

class _AuthorList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return const Center(child: Text("Home"));
  }
}
