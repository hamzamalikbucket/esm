import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';

import 'drawer_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<SliderDrawerState> _sliderDrawerKey =
    GlobalKey<SliderDrawerState>();
    String title = "Home";

    return MaterialApp(
      theme: ThemeData(fontFamily: 'BalsamiqSans'),
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: SliderDrawer(
              appBar: SliderAppBar(
                  appBarColor: Colors.white,
                  title: Text(title,
                      style: const TextStyle(
                          fontSize: 22, fontWeight: FontWeight.w700))),
              key: _sliderDrawerKey,
              sliderOpenSize: 280,
              slider: SliderView(
                onItemClick: (title) {
                  _sliderDrawerKey.currentState!.closeSlider();
                  setState(() {
                    title = title;
                  });
                  print("jkadgfa");
                },
              ),
              child: _AuthorList()),
        ),
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
