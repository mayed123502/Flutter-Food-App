
import 'package:ecommerce_app/view/widgets/textWithFont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Description extends StatelessWidget {
  const Description({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: TextWithFont().textWithRobotoFont(
          color: Get.isDarkMode ? Colors.white : Colors.black,
          fontSize: 15.sp,
          text: 'Description',
          fontWeight: FontWeight.bold),
    );
  }
}