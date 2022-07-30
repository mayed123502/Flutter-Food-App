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
        onPressed: () {
          Get.toNamed(Routes.filterScreen);
        },
      ),
      decoration: BoxDecoration(
        color: Color.fromRGBO(244, 244, 244, 1),
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}

