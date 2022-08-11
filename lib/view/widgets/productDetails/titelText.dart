import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../textWithFont.dart';

class TitelText extends StatelessWidget {
  const TitelText({
    Key? key, required this.title,
  }) : super(key: key);
final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: TextWithFont().textWithRalewayFont(
          color: Get.isDarkMode ? Colors.white : Colors.black,
          fontSize: 20.sp,
          text: title,
          fontWeight: FontWeight.bold),
    );
  }
}