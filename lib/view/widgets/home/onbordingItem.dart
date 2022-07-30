import 'package:ecommerce_app/view/widgets/home/onboardingtime.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../textWithFont.dart';

class OnBordingItem extends StatelessWidget {
  const OnBordingItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: Image.asset(
            'assets/onbordingHome.png',
          ),
          top: -3,
          right: -20.w,
        ),
        Positioned(
          top: 25.h,
          left: 40.w,
          child: TextWithFont().textWithRobotoFont(
              text: 'Super food Sale \n 50% off',
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              textAlign: TextAlign.center),
        ),
        OnboardingTime(),
      ],
    );
  }
}

