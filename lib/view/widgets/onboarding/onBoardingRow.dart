import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../logic/controllers/onboarding_controller.dart';
import '../../../routes/routes.dart';
import '../../../utils/theme.dart';
import '../textWithFont.dart';

class OnBoardingRow extends StatelessWidget {
  const OnBoardingRow({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final OnBoardingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 11.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () {
              Get.toNamed(Routes.mainScreen);
            },
            child: TextWithFont().textWithRobotoFont(
              text: 'Skip',
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
              color: onBoardingSkipButtonColor,
            ),
          ),
          GestureDetector(
              onTap: () {
                controller.next();
              },
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.orange.withOpacity(.09),
                child: TextWithFont().textWithNunitoSansFont(
                  text: 'Next',
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w400,
                  color: mainColor,
                ),
              )),
        ],
      ),
    );
  }
}
