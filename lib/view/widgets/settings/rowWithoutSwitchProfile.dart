import 'package:ecommerce_app/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../textWithFont.dart';

class RowWithoutSwitchProfile extends StatelessWidget {
  const RowWithoutSwitchProfile({
    super.key,
    required this.text,
    required this.icon,
    required this.paddingSize,
    required this.sizedBoxWidth,
  });

  final String text;
  final IconData icon;
  final double paddingSize;
  final double sizedBoxWidth;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Icons.person_outline
        Icon(icon),
        SizedBox(
          width: 20.w,
        ),
        TextWithFont().textWithRobotoFont(
          text: text,
          fontSize: 14.sp,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
        SizedBox(
          width: sizedBoxWidth,
        ),
        //  Icons.arrow_forward_ios_rounded
        Padding(
          padding: EdgeInsets.only(left: paddingSize),
          child: GestureDetector(
            onTap: (){
              Get.toNamed(Routes.profileSetting);
            },
            child: const Icon(
              Icons.arrow_forward_ios_rounded,
              size: 20,
            ),
          ),
        )
      ],
    );
  }
}
