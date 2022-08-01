import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../auth/preferredSizeInAppBar.dart';

class AppBarCart  extends StatelessWidget with PreferredSizeWidget{
  const AppBarCart({
    Key? key,
  }) : super(key: key);
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      bottom: const PreferredSizeInAppBar(),
      // leading: GestureDetector(
      //   onTap: () => Get.back(),
      //   child: Icon(
      //     Icons.arrow_back_ios,
      //     color: Get.isDarkMode ? Colors.white : Colors.black,
      //     size: 20,
      //   ),
      // ),
      title: Text(
        'Your Carts',
        style: TextStyle(
            fontSize: 20.sp,
            color: Colors.black,
            fontWeight: FontWeight.bold),
      ),
      elevation: 0,
    );
  }
}
