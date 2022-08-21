import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_app/utils/theme.dart';
import 'package:ecommerce_app/view/widgets/home/onboardingtime.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../model/offer/offerListData_model.dart';
import '../textWithFont.dart';

class OnBordingItem extends StatelessWidget {
  const OnBordingItem({
    Key? key,
    required this.offerListData,
  }) : super(key: key);
  final OfferListData offerListData;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: CircleAvatar(
            backgroundColor: mainColor,
            radius: 60,
            child: ClipOval(
              child: SizedBox.fromSize(
                size: Size.fromRadius(65), // Image radius
                child: CachedNetworkImage(
                  imageUrl: offerListData.product!.image!,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          top: -20,
          right: 5,
        ),
        Positioned(
          top: 25.h,
          left: 40.w,
          child: TextWithFont().textWithRobotoFont(
              text:
                  '${offerListData.title} \n ${offerListData.discountPercent}% off',
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              textAlign: TextAlign.center),
        ),
        OnboardingTime(
          deadline: offerListData.deadline!,
        ),
      ],
    );
  }
}
