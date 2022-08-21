import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../textWithFont.dart';

class AppBarRev extends StatelessWidget with PreferredSizeWidget {
  const AppBarRev({
    Key? key,
  }) : super(key: key);
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: TextWithFont().textWithRobotoFont(
          color: Theme.of(context).textTheme.headline1!.color,
          fontSize: 20.sp,
          text: 'Review',
          fontWeight: FontWeight.bold),
      leading: IconButton(
        onPressed: () => Get.back(),
        icon: Icon(
          Icons.arrow_back_ios,
          size: 20,
        ),
      ),
    );
  }
}
