import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../routes/routes.dart';
import '../../../utils/theme.dart';
import '../auth/auth_button.dart';
import '../textWithFont.dart';

class ShowNotFound extends StatelessWidget {
  const ShowNotFound({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: .6.sh,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/notfound.png',
              width: 75.w,
              height: 75.h,
            ),
            SizedBox(
              height: 8.h,
            ),
            TextWithFont().textWithRobotoFont(
              text: 'Not Found',
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
              color: mainColor,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 35.h,
            ),
            TextWithFont().textWithRobotoFont(
                text: 'Thank you for using the app',
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: Color.fromRGBO(147, 161, 170, 1),
                textAlign: TextAlign.center),
            SizedBox(
              height: 35.h,
            ),
            AuthButton(
              text: 'Back to Home',
              press: () {
                Get.toNamed(Routes.mainScreen);
              },
            )
          ],
        ),
      );
  }
}

