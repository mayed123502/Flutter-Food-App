
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../routes/routes.dart';
import '../../../../utils/theme.dart';
import '../../textWithFont.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: TextButton(
        child: TextWithFont().textWithRobotoFont(
          color: mainColor,
          fontSize: 15.sp,
          text: 'Forgot Password?'.tr,
          fontWeight: FontWeight.w300,
        ),
        onPressed: () {
          Get.toNamed(Routes.forgotPasswordScreen);
        },
      ),
    );
  }
}