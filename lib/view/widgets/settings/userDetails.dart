import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_app/view/widgets/textWithFont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../logic/controllers/settings_controller.dart';
import '../../../utils/sharPreferenceUtils .dart';

class UserDetails extends StatelessWidget {
  UserDetails({
    Key? key,
    required this.settingsController,
  }) : super(key: key);
  final SettingsController settingsController;
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(70),
            child: CachedNetworkImage(
              imageUrl: settingsController.image.value,
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => Image.asset(
                'assets/icons/person.png',
                width: 90.w,
                height: 90.h,
              ),
              width: 90.w,
              height: 90.h,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWithFont().textWithRobotoFont(
                  color: Colors.black,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.normal,
                  text: settingsController.name.value),
              TextWithFont().textWithRobotoFont(
                  color: Colors.black,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.normal,
                  text: settingsController.email.value),
            ],
          )
        ],
      ),
    );
  }
}
