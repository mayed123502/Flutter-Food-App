import 'package:ecommerce_app/model/restauntAll/dataOfRestaurant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../model/restaurantsDetails_model.dart';
import '../../../utils/constant/imageasset.dart';
import '../../../utils/theme.dart';
import '../textWithFont.dart';

class ResturantDetails extends StatelessWidget {
  const ResturantDetails({
    Key? key,
    required this.restaurantData,
  }) : super(key: key);
  final Data restaurantData;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            TextWithFont().textWithRalewayFont(
                color: Theme.of(context).textTheme.headline1!.color!,
                fontSize: 20.sp,
                text: restaurantData.name!,
                fontWeight: FontWeight.bold),
            SizedBox(
              width: 5.w,
            ),
            TextWithFont().textWithRobotoFont(
                color: dateColor,
                fontSize: 14.sp,
                text:
                    'Open(${restaurantData.startAt} to ${restaurantData.endAt})',
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
                color:  Theme.of(context).textTheme.headline1!.color!.withOpacity(.5),
                fontSize: 16.sp,
                text: restaurantData.address!,
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
                color: Theme.of(context).textTheme.headline1!.color!.withOpacity(.5),
                fontSize: 16.sp,
                text: restaurantData.rating.toString(),
                fontWeight: FontWeight.w500),
            RatingBarIndicator(
              rating: restaurantData.rating!.toDouble(),
              itemCount: 1,
              itemSize: 20.0,
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: mainColor,
              ),
            ),
            SizedBox(
              width: 16.w,
            ),
            TextWithFont().textWithRalewayFont(
                color: Theme.of(context).textTheme.headline1!.color!.withOpacity(.5),
                fontSize: 16.sp,
                text: '${restaurantData.numRating}+Rating',
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
