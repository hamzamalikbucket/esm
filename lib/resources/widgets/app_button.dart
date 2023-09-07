import 'package:esm/resources/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppButton extends StatelessWidget {
  final Function? onTap;
  final double? width;
  final double? height;
  final String assetUrl;
  final bool disabled;

  const AppButton({
    Key? key,
    this.onTap,
    this.width,
    this.disabled = false,
    this.height,
    this.assetUrl = Constants.loginBTn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: GestureDetector(
        onTap: () {
          if (!disabled && onTap != null) onTap!();
        },
        child: SvgPicture.asset(
          assetUrl,
        ),
      ),
    );
  }
}
