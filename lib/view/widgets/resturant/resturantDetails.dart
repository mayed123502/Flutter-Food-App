import 'package:ecommerce_app/model/restauntAll/dataOfRestaurant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/constant/imageasset.dart';
import '../../../utils/theme.dart';
import '../textWithFont.dart';

class ResturantDetails extends StatelessWidget {
  const ResturantDetails({
    Key? key,
    required this.restaurantData,
  }) : super(key: key);
  final DataOfRestaurant restaurantData;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            TextWithFont().textWithRalewayFont(
                color: filterTitlesColor,
                fontSize: 20.sp,
                text: restaurantData.name!,
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
            Image.asset(
              ImageAsset.loc,
              width: 20.w,
              height: 20.h,
            ),
            TextWithFont().textWithRalewayFont(
                color: Colors.black.withOpacity(.5),
                fontSize: 16.sp,
                text: restaurantData.name!,
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
                text: restaurantData.rating.toString(),
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
                text: '${restaurantData.name}+Rating',
                fontWeight: FontWeight.w500),
            SizedBox(
              width: 16.w,
            ),
          ],
        ),
      ],
    );
  }
}
