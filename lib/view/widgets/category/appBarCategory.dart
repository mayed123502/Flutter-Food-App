import 'package:ecommerce_app/view/widgets/textWithFont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AppBarCategory extends StatelessWidget with PreferredSizeWidget {
  const AppBarCategory({
    Key? key,
  }) : super(key: key);
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: TextWithFont().textWithRobotoFont(
        text: 'Resturants'.tr,
        fontSize: 20.sp,
        fontWeight: FontWeight.bold,
        color:Theme.of(context).textTheme.headline1!.color,
      ),
      elevation: 0,
      centerTitle: true,
      leading: IconButton(
        onPressed: () => Get.back(),
        icon: Icon(
          Icons.arrow_back_ios,        size: 20,
        ),
      ),
    );
  }
}
