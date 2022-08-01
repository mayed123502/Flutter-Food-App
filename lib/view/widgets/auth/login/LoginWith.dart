import 'package:ecommerce_app/view/widgets/auth/login/lineWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../utils/theme.dart';
import '../../textWithFont.dart';

class LoginWithText extends StatelessWidget {
  const LoginWithText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Get.locale?.languageCode == 'en'
            ? LineWidget(left: 0.0, right: 30.w)
            : LineWidget(left: 30.w, right: 0),
        TextWithFont().textWithRobotoFont(
          text: "Login with".tr,
          fontSize: 16.sp,
          fontWeight: FontWeight.w500,
          color: Get.isDarkMode ? Colors.blueAccent : authLoginWithTextColor,
        ),
        Get.locale?.languageCode == 'en'
            ? LineWidget(left: 30.w, right: 0.0)
            : LineWidget(left: 0, right: 30.w),
      ],
    );
  }
}
