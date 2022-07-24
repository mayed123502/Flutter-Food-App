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
          onPressed: () {
            Get.toNamed(Routes.mainScreen);
          },
          text: 'Get Start',
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'I already have an account. ',
              style: GoogleFonts.nunitoSans(
                textStyle: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Get.toNamed(Routes.loginScreen);
              },
              child:
                  // textWithNunitoSansFont

                  //  'Log in',
                  // style: GoogleFonts.nunitoSans(
                  //   textStyle: TextStyle(
                  //     fontSize: 15.sp,
                  //     fontWeight: FontWeight.w300,
                  //   ),
                  TextWithFont().textWithNunitoSansFont(
                text: 'Log in',
                fontSize: 15.sp,
                fontWeight: FontWeight.w300,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
