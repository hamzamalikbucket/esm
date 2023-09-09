import 'package:esm/resources/Widgets/app_button.dart';
import 'package:esm/resources/Widgets/app_text.dart';
import 'package:esm/resources/Widgets/sized_boxes.dart';
import 'package:esm/resources/widgets/radio_button.dart';
import 'package:flutter/material.dart';

class ModeratorScreen extends StatefulWidget {
  const ModeratorScreen({super.key});

  @override
  State<ModeratorScreen> createState() => _ModeratorScreenState();
}

class _ModeratorScreenState extends State<ModeratorScreen> {
  int groupValue = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          AppRadioButton(
            groupValue: groupValue,
            value: 1,
            onChanged: (v) {
              setState(() {
                groupValue = v;
              });
            },
            text: "Everyone starts muted",
          ),
          AppRadioButton(
            groupValue: groupValue,
            value: 2,
            onChanged: (v) {
              setState(() {
                groupValue = v;
              });
            },
            text: "Everyone starts hidden",
          ),
          AppRadioButton(
            groupValue: groupValue,
            value: 3,
            onChanged: (v) {
              setState(() {
                groupValue = v;
              });
            },
            text: "Everyone follows me",
          ),
          AppRadioButton(
            groupValue: groupValue,
            value: 4,
            onChanged: (v) {
              setState(() {
                groupValue = v;
              });
            },
            text: "Mute reaction sounds for everyone",
          ),
          const SizeBoxHeight32(),
          Align(
            alignment: Alignment.center,
            child: AppGradiantButton(
              width: 200,
              onTap: () {},
              btnText: 'Ok',
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const AppText(
                'Cancel',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
