import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../textWithFont.dart';

class AuthButton extends StatelessWidget {
  final String text;
  final Function? press;

  const AuthButton({
    required this.text,
    Key? key, this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed:press as void Function()?,
        style: ElevatedButton.styleFrom(
          // shadowColor: Colors.white,
          side: BorderSide.none,
          minimumSize: Size(337.w, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12), // <-- Radius
          ),
        ),
        child: TextWithFont().textWithRobotoFont(
          color: Colors.white,
          fontSize: 20.sp,
          fontWeight: FontWeight.bold,
          text: text,
        ),
        
        );
  }
}
