import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../textWithFont.dart';

class TopTitile extends StatelessWidget {
  const TopTitile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextWithFont().textWithRalewayFont(
              color:  Theme.of(context).textTheme.headline1!.color!,
              fontSize: 28.sp,
              text: 'Login'.tr,
              fontWeight: FontWeight.bold),
          SizedBox(
            height: 2.h,
          ),
          Text(
            'Good to see you back!'.tr,
            style: GoogleFonts.nunitoSans(
              textStyle: TextStyle(
                fontSize: 19.sp,
                fontWeight: FontWeight.w300,
                color: Theme.of(context).textTheme.headline1!.color!,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
