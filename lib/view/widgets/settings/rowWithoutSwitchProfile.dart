import 'package:ecommerce_app/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../logic/controllers/settings_controller.dart';
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
    return ListTile(
        leading: Icon(
          icon,
          color: Theme.of(context).iconTheme.color,
        ),
        title: TextWithFont().textWithRobotoFont(
          text: text,
          fontSize: 14.sp,
          fontWeight: FontWeight.normal,
          color: Theme.of(context).textTheme.headline1!.color,
        ),
        trailing: GestureDetector(
          onTap: () {
            Get.toNamed(Routes.profileSetting);
          },
          child: Icon(
            Icons.arrow_forward_ios_rounded,
            size: 20,
            color: Theme.of(context).iconTheme.color,
          ),
        )
        // ],
        );
  }
}
