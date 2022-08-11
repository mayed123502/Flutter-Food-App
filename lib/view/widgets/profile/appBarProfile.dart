import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../logic/controllers/settings_controller.dart';
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
      backgroundColor: const Color.fromRGBO(226, 226, 227, 1),
      actions: [
        TextButton(
          onPressed: () {
            settingController.save();
          },
          child: TextWithFont().textWithRobotoFont(
              color: mainColor,
              fontSize: 18.sp,
              text: 'Save',
              fontWeight: FontWeight.normal),
        )
      ],
      leading: IconButton(
        onPressed: () => Get.back(),
        icon: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
      ),
    );
  }
}
