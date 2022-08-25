import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWithFont {
  Text textWithRobotoFont(
      {required String text,
      required double fontSize,
      required FontWeight fontWeight,
      Color? color,
      TextAlign? textAlign}) {
    return Text(
      text,
      style: GoogleFonts.roboto(
        textStyle: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color,
        ),
      ),
      textAlign: textAlign,
    );
  }

  Text textWithRalewayFont(
      {required String text,
      required double fontSize,
      required FontWeight fontWeight,
      required Color color,
      TextAlign? textAlign}) {
    return Text(
      text,
      style: GoogleFonts.raleway(
        textStyle: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color,
        ),
      ),
      textAlign: textAlign,
    );
  }

  Text textWithNunitoSansFont(
      {required String text,
      required double fontSize,
      required FontWeight fontWeight,
      Color? color,
      TextAlign? textAlign}) {
    return Text(
      text,
      style: GoogleFonts.nunitoSans(
        textStyle: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color,
        ),
      ),
      textAlign: textAlign,
    );
  }
}
