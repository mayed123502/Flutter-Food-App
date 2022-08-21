import 'package:ecommerce_app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../routes/routes.dart';
import '../auth/auth_button.dart';
import '../textWithFont.dart';

class OnBoardingColumn extends StatelessWidget {
  const OnBoardingColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AuthButton(
          press: () {
            Get.toNamed(Routes.mainScreen);
          },
          text: 'Get Start'.tr,
        ),
        SizedBox(
          height: 15.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'I already have an account. '.tr,
              style: GoogleFonts.nunitoSans(
                textStyle: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w300,
                    color: Theme.of(context).textTheme.headline1!.color),
              ),
            ),
            InkWell(
              onTap: () {
                Get.toNamed(Routes.loginScreen);
              },
              child: TextWithFont().textWithNunitoSansFont(
                text: "Log in".tr,
                fontSize: 15.sp,
                fontWeight: FontWeight.w300,
                color: headline1Color,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
