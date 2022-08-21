import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../auth/preferredSizeInAppBar.dart';

class AppBarCart extends StatelessWidget with PreferredSizeWidget {
  const AppBarCart({
    Key? key,
  }) : super(key: key);
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      bottom: const PreferredSizeInAppBar(),
      title: Text(
        'Your Carts'.tr,
        style: TextStyle(
            fontSize: 20.sp,
            color: Theme.of(context).textTheme.headline1!.color,
            fontWeight: FontWeight.bold),
      ),
      elevation: 0,
    );
  }
}
