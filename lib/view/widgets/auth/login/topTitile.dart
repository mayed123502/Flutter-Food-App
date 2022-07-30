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
      padding: EdgeInsets.only(left: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextWithFont().textWithRalewayFont(
              color: Get.isDarkMode ? Colors.white : Colors.black,
              fontSize: 28.sp,
              text: 'Login',
              fontWeight: FontWeight.bold),
          SizedBox(
            height: 2.h,
          ),
          Text(
            'Good to see you back!',
            style: GoogleFonts.nunitoSans(
              textStyle: TextStyle(
                fontSize: 19.sp,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
