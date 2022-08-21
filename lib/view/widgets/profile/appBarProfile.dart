import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../logic/controllers/settings_controller.dart';
import '../../../utils/sharPreferenceUtils .dart';
import '../../../utils/theme.dart';
import '../textWithFont.dart';

class AppBarProfile extends StatelessWidget with PreferredSizeWidget {
  AppBarProfile({
    Key? key,
  }) : super(key: key);
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  final settingController = Get.find<SettingsController>();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      actions: [
        TextButton(
          onPressed: SharedPrefs.instance.getString('token') == null
              ? null
              : () {
                  settingController.save();
                },
          child: TextWithFont().textWithRobotoFont(
              color: mainColor,
              fontSize: 18.sp,
              text: 'Save'.tr,
              fontWeight: FontWeight.normal),
        )
      ],
      leading: IconButton(
        onPressed: () => Get.back(),
        icon: Icon(
          Icons.arrow_back_ios,
        ),
      ),
    );
  }
}
