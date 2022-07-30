import 'package:ecommerce_app/view/widgets/home/timeOnBoarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingTime extends StatelessWidget {
  const OnboardingTime({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20.h,
      left: 40.w,
      child: Row(
        children: [
          TimeOnBoarding(
            text: '08',
          ),
          SizedBox(
            width: 20.w,
          ),
          TimeOnBoarding(
            text: '34',
          ),
          SizedBox(
            width: 20.w,
          ),
          TimeOnBoarding(
            text: '25',
          ),
        ],
      ),
    );
  }
}
