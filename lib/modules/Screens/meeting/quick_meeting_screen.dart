import 'package:esm/resources/utils/Constants.dart';
import 'package:flutter/material.dart';

class QuickMeetingScreen extends StatefulWidget {
  const QuickMeetingScreen({super.key});

  @override
  State<QuickMeetingScreen> createState() => _QuickMeetingScreenState();
}

class _QuickMeetingScreenState extends State<QuickMeetingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Image.asset(
          Constants.meetings,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
