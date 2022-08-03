import 'package:ecommerce_app/utils/theme.dart';
import 'package:ecommerce_app/view/widgets/textWithFont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CostomColumn extends StatelessWidget {
  const CostomColumn({
    super.key,
    required this.imageUrl,

    required this.text,
  });

  final String imageUrl;

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      // padding: EdgeInsets.only(left: 70.w, top: 20.h, bottom: 10.h,right: 0),
//  left: Get.locale?.languageCode == 'en' ? left : right,
//         top: 20.h,
//         bottom: 10.h,
//         right: Get.locale?.languageCode == 'en' ? right : left,
      padding: EdgeInsets.symmetric(
       horizontal: 20.w
       ,
       vertical: 15.h
      ),
      child: Column(
        children: [
          Image.asset(
            imageUrl,
            width: 25.w,
            height: 25.h,
            color: mainColor,
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
