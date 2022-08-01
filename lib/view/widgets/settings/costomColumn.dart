import 'package:ecommerce_app/view/widgets/textWithFont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CostomColumn extends StatelessWidget {
  const CostomColumn({
    super.key,
    required this.imageUrl,
    required this.left,
    required this.right,
    required this.text,
  });

  final String imageUrl;
  final double left;
  final double right;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      // padding: EdgeInsets.only(left: 70.w, top: 20.h, bottom: 10.h,right: 0),

      padding: EdgeInsets.only(
        left: Get.locale?.languageCode == 'en' ? left : right,
        top: 20.h,
        bottom: 10.h,
        right: Get.locale?.languageCode == 'en' ? right : left,
      ),
      child: Column(
        children: [
          Image.asset(
            imageUrl,
            width: 25.w,
            height: 25.h,
          ),
          SizedBox(
            height: 15.h,
          ),
          TextWithFont().textWithRobotoFont(
              color: Colors.black,
              fontSize: 12.sp,
              fontWeight: FontWeight.normal,
              text: text),
        ],
      ),
    );
  }
}
