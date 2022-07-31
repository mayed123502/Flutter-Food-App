import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/constant/imageasset.dart';
import '../../../utils/theme.dart';
import '../textWithFont.dart';

class ResturantDetails extends StatelessWidget {
  const ResturantDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            TextWithFont().textWithRalewayFont(
                color: filterTitlesColor,
                fontSize: 20.sp,
                text: 'Burger king',
                fontWeight: FontWeight.bold),
            SizedBox(
              width: 5.w,
            ),
            TextWithFont().textWithRobotoFont(
                color: dateColor,
                fontSize: 14.sp,
                text: 'Open(9:00am to 12pm)',
                fontWeight: FontWeight.w500),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          children: [
            SizedBox(
              width: 2.w,
            ),
            TextWithFont().textWithRalewayFont(
                color: Colors.black.withOpacity(.5),
                fontSize: 16.sp,
                text: 'Burger',
                fontWeight: FontWeight.w600),
            SizedBox(
              width: 10.w,
            ),
            Image.asset(
              ImageAsset.loc,
              width: 20.w,
              height: 20.h,
            ),
            TextWithFont().textWithRalewayFont(
                color: Colors.black.withOpacity(.5),
                fontSize: 16.sp,
                text: 'Al-Jalal Street',
                fontWeight: FontWeight.w500),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          children: [
            SizedBox(
              width: 5.w,
            ),
            TextWithFont().textWithRalewayFont(
                color: Colors.black.withOpacity(.5),
                fontSize: 16.sp,
                text: '4.9',
                fontWeight: FontWeight.w500),
            Icon(
              Icons.star,
              color: mainColor,
            ),
            SizedBox(
              width: 16.w,
            ),
            TextWithFont().textWithRalewayFont(
                color: Colors.black.withOpacity(.5),
                fontSize: 16.sp,
                text: '300+Rating',
                fontWeight: FontWeight.w500),
            SizedBox(
              width: 16.w,
            ),
            Icon(
              Icons.access_time,
            ),
            SizedBox(
              width: 10.w,
            ),
            TextWithFont().textWithRalewayFont(
                color: Colors.black.withOpacity(.5),
                fontSize: 16.sp,
                text: '12min',
                fontWeight: FontWeight.w500),
          ],
        ),
      ],
    );
  }
}
