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
              color:  Theme.of(context).textTheme.headline1!.color,
              fontSize: 12.sp,
              fontWeight: FontWeight.normal,
              text: text),
        ],
      ),
    );
  }
}
