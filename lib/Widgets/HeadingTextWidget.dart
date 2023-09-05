

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class HeadingTextWidget extends StatelessWidget {
  String input;
  double fontsize;
  FontWeight fontWeight;
  Color textcolor;


  HeadingTextWidget({Key? key, required this.input,required this.fontsize,required this.fontWeight,required this.textcolor}):
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Text(input,
          textAlign: TextAlign.justify,
          style: GoogleFonts.poppins(
            fontSize: fontsize,
            fontWeight: fontWeight,
            color: textcolor,
          )
      );
  }
}