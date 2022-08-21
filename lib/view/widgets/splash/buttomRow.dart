import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../routes/routes.dart';
import '../../../utils/theme.dart';

class ButtomRow extends StatelessWidget {
  const ButtomRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'I already have an account. '.tr,
          style: GoogleFonts.nunitoSans(
            textStyle: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.w300,color:Theme.of(context).textTheme.headline1!.color!, 
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Get.toNamed(Routes.loginScreen);
          },
          child: Text(
            'Log in'.tr,
            style: GoogleFonts.nunitoSans(
              textStyle: TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.w300,
                color:headline1Color,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
