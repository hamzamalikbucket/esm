import 'package:esm/resources/Widgets/app_button.dart';
import 'package:esm/resources/Widgets/app_text.dart';
import 'package:esm/resources/Widgets/sized_boxes.dart';
import 'package:esm/resources/utils/app_colors.dart';
import 'package:esm/resources/widgets/switch_button.dart';
import 'package:flutter/material.dart';

class SecurityScreen extends StatefulWidget {
  const SecurityScreen({super.key});

  @override
  State<SecurityScreen> createState() => _SecurityScreenState();
}

class _SecurityScreenState extends State<SecurityScreen> {
  bool lobby = false;
  bool encryption = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                ),
                const AppText(
                  'Security',
                  size: 20,
                  fontWeight: FontWeight.w700,
                ),
                const IconButton(
                  onPressed: null,
                  icon: SizedBox(),
                ),
              ],
            ),
            const SizeBoxHeight16(),
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppText(
                    'Lobby mode lets you protect your event by only allowing people to enter after a formal approval by a moderator.',
                    size: 14,
                    fontWeight: FontWeight.w400,
                  ),
                  const SizeBoxHeight16(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const AppText(
                        'Enable lobby',
                        size: 14,
                        fontWeight: FontWeight.w700,
                      ),
                      CupertinoSwitchButton(
                        value: lobby,
                        onChange: (v) {
                          setState(() {
                            lobby = v;
                          });
                        },
                        trackColor: AppColors.greyBgColor,
                        activeColor: AppColors.bluColor,
                        thumbColor: AppColors.greyBgColor,
                        focusColor: AppColors.black,
                      )
                    ],
                  ),
                  const Divider(),
                  const SizeBoxHeight16(),
                  const AppText(
                    'You can add a password to your event. Participants will need to provide the password before they are allowed to join the event.',
                    size: 14,
                    fontWeight: FontWeight.w400,
                  ),
                  const SizeBoxHeight16(),
                  const AppText(
                    'Password: ****** ',
                    size: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const AppText(
                          'Remove',
                          color: AppColors.bluColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const AppText(
                          'Copy',
                          color: AppColors.bluColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const AppText(
                          'Show',
                          color: AppColors.bluColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  const Divider(),
                  const SizeBoxHeight16(),
                  const AppText(
                    'End-to-End Encryption is currently EXPERIMENTAL. Please keep in mind that turning on end-to-end encryption will effectively disable server-side provided services such as: phone participation. Also keep in mind that the event will only work for people joining from browsers with support for insertable streams.',
                    size: 14,
                    fontWeight: FontWeight.w400,
                  ),
                  const SizeBoxHeight16(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const AppText(
                        'Enable End-to-End Encryption',
                        size: 14,
                        fontWeight: FontWeight.w700,
                      ),
                      CupertinoSwitchButton(
                        value: encryption,
                        onChange: (v) {
                          setState(() {
                            encryption = v;
                          });
                        },
                        trackColor: AppColors.greyBgColor,
                        activeColor: AppColors.bluColor,
                        thumbColor: AppColors.greyBgColor,
                        focusColor: AppColors.black,
                      )
                    ],
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
                      onPressed: () { Navigator.pop(context);},
                      child: const AppText(
                        'Cancel',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
