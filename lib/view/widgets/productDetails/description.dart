
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
          color: Theme.of(context).textTheme.headline1!.color,
          fontSize: 15.sp,
          text: 'Description'.tr,
          fontWeight: FontWeight.bold),
    );
  }
}