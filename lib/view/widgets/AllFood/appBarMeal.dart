import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../textWithFont.dart';

class AppBarMeal extends StatelessWidget with PreferredSizeWidget{
  const AppBarMeal({
    Key? key,
  }) : super(key: key);
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: TextWithFont().textWithRobotoFont(
        text: 'All Meals',
        fontSize: 20.sp,
        fontWeight: FontWeight.bold,
        color:Theme.of(context).textTheme.headline1!.color
      ),
      elevation: 0,
      centerTitle: true,
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
