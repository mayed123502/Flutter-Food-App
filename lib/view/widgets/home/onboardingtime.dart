import 'package:ecommerce_app/view/widgets/home/timeOnBoarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingTime extends StatelessWidget {
  OnboardingTime({
    Key? key,
    required this.deadline,
  }) : super(key: key);
  final String deadline;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20.h,
      left: 40.w,
      child: Row(
        children: [
          TimeOnBoarding(
            text: DateTime.parse(deadline).day.toString(),
          ),
          SizedBox(
            width: 20.w,
          ),
          TimeOnBoarding(
            text: DateTime.parse(deadline).hour.toString(),
          ),
          SizedBox(
            width: 20.w,
          ),
          TimeOnBoarding(
            text: DateTime.parse(deadline).minute.toString(),
          ),
        ],
      ),
    );
  }
}
