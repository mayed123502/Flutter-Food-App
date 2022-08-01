import 'package:ecommerce_app/view/widgets/textWithFont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Addres extends StatelessWidget {
  const Addres({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.4,
      child: TextWithFont().textWithRalewayFont(
          color: Get.isDarkMode ? Colors.white : Colors.black.withOpacity(.8),
          fontSize: 16.sp,
          text: "653 Nostrand Ave., Brooklyn, NY 11216",
          fontWeight: FontWeight.bold),
    );
  }
}