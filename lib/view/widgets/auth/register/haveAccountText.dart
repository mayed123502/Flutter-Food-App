import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../routes/routes.dart';
import '../../../../utils/theme.dart';
import '../../textWithFont.dart';

class HaveAccountText extends StatelessWidget {
  const HaveAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextWithFont().textWithRobotoFont(
            fontSize: 15.sp,
            fontWeight: FontWeight.w300,
            text: 'I already have an account. '.tr,
            color: mainColor),
        InkWell(
          onTap: () {
            Get.toNamed(Routes.loginScreen);
          },
          child: TextWithFont().textWithRobotoFont(
              fontSize: 15.sp,
              fontWeight: FontWeight.w300,
              text: 'Login'.tr,
              color: headline1Color),
        ),
      ],
    );
  }
}
