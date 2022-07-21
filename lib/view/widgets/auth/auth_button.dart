import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/theme.dart';

class AuthButton extends StatelessWidget {
  final String text;
  final Function() onPressed;

  const AuthButton({
    required this.onPressed,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: mainColor,
        minimumSize:  Size(337.w, 50),
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12), // <-- Radius
    ),
      ),
      
      child: Text(text,
          style: GoogleFonts.roboto(
            textStyle:  TextStyle(
              color: Colors.white,
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
            ),
          )),
    );
  }
}
