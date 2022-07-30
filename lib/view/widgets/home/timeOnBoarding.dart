import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../textWithFont.dart';

class TimeOnBoarding extends StatelessWidget {
  final String text;
   TimeOnBoarding({
     required this.text,
  }) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: TextWithFont().textWithRobotoFont(
            text: text,
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            textAlign: TextAlign.center),
      ),
      width: 35.w,
      height: 35.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
    );
  }
}
