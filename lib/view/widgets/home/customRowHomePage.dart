import 'package:ecommerce_app/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../utils/theme.dart';
import '../textWithFont.dart';

class CustomRowHomePage extends StatelessWidget {
  final String firstText;
  final String scoindText;

  CustomRowHomePage({
    required this.firstText,
    required this.scoindText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 18.w, right: 18.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextWithFont().textWithRobotoFont(
            text: firstText,
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          GestureDetector(
            onTap: () {
              Get.toNamed(Routes.categoryScreen);
            },
            child: TextWithFont().textWithRobotoFont(
              text: scoindText,
              color: mainColor,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
