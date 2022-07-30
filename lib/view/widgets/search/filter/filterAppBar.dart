import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../auth/preferredSizeInAppBar.dart';
import '../../textWithFont.dart';

class FilterAppBar extends StatelessWidget with PreferredSizeWidget {
  const FilterAppBar({
    Key? key,
  }) : super(key: key);
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      bottom: PreferredSizeInAppBar(),
      elevation: 0,
      leading: GestureDetector(
        onTap: () => Get.back(),
       child: Icon(
        Icons.arrow_back_ios,
        color: Get.isDarkMode ? Colors.white : Colors.black,
        size: 20,
      ),
      ),
      centerTitle: true,
      title: TextWithFont().textWithRobotoFont(
        text: 'Filter',
        fontSize: 20.sp,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      
    );
  }
}
