import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../utils/theme.dart';
import '../../textWithFont.dart';
import '../preferredSizeInAppBar.dart';

class AppBarForgot extends StatelessWidget with PreferredSizeWidget {
  const AppBarForgot({
    Key? key,
  }) : super(key: key);
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: context.theme.appBarTheme.backgroundColor,
      title: TextWithFont().textWithRobotoFont(
          text: 'Forget Password',
          fontSize: 20.sp,
          fontWeight: FontWeight.bold,
          color: mainColor),
      bottom: const PreferredSizeInAppBar(),
      leading: GestureDetector(
        onTap: () => Get.back(),
        child: Icon(
          Icons.arrow_back_ios,
          color: Get.isDarkMode ? Colors.white : Colors.black,
          size: 20,
        ),
      ),
    );
  }
}
