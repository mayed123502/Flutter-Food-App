
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

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
      child: TextWithFont().textWithRobotoFont(
          color: Get.isDarkMode ? Colors.white : Colors.black,
          fontSize: 20.sp,
          text: 'Creat a new account',
          fontWeight: FontWeight.bold),
    );
  }
}
