import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/static/static.dart';
import '../../../utils/theme.dart';
import '../textWithFont.dart';

class PageViewOnBoarding extends StatelessWidget {
  final int index;

  PageViewOnBoarding({
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 63.h,
        ),
        Image.asset(
          onBoardingList[index].image!,
          height: 262.h,
          width: 312.06.w,
        ),
        SizedBox(
          height: 40.h,
        ),
        TextWithFont().textWithRobotoFont(
            text: onBoardingList[index].title!,
            fontSize: 28.sp,
            textAlign: TextAlign.center,
            fontWeight: FontWeight.bold,
            color: mainColor),
        SizedBox(
          height: 30.h,
        ),
        TextWithFont().textWithRobotoFont(
            text: onBoardingList[index].body!,
            fontSize: 18.sp,
            textAlign: TextAlign.center,
            fontWeight: FontWeight.w300,
            color: onBoardingDocsColor),
      ],
    );
  }
}