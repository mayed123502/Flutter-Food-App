import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../routes/routes.dart';
import '../../../utils/theme.dart';

class FilterContainer extends StatelessWidget {
  const FilterContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 47.w,
      height: 56.h,
      child: IconButton(
          icon: Icon(
            Icons.filter_list_alt,
            color: mainColor,
          ),
          onPressed: null

          //  () {
          //   Get.toNamed(Routes.filterScreen);
          // },
          ),
      decoration: BoxDecoration(
        color: Get.isDarkMode
            ? Theme.of(context).textTheme.headline4!.color
            : Color(0xFFF4F4F4),
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
