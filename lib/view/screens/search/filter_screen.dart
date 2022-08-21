import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../logic/controllers/resturant_controller.dart';
import '../../../utils/theme.dart';
import '../../widgets/auth/auth_button.dart';
import '../../widgets/category/choseMenu.dart';
import '../../widgets/category/choseMenuRating.dart';
import '../../widgets/search/filter/filterAppBar.dart';
import '../../widgets/search/filter/rangeSlider.dart';
import '../../widgets/textWithFont.dart';
import 'package:get/get.dart';

class FilterScreen extends StatelessWidget {
  FilterScreen({Key? key}) : super(key: key);

  var currentSeletected = 0;
  @override
  Widget build(BuildContext context) {
    Get.put(ResturantController());

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: FilterAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWithFont().textWithRalewayFont(
                color: filterTitlesColor,
                fontSize: 20.sp,
                text: 'Category',
                fontWeight: FontWeight.bold),
            ChoseMenu(),
            SizedBox(
              height: 20.h,
            ),
            TextWithFont().textWithRalewayFont(
                color: filterTitlesColor,
                fontSize: 20.sp,
                text: 'Type',
                fontWeight: FontWeight.bold),
            ChoseMenu(),
            SizedBox(
              height: 20.h,
            ),
            TextWithFont().textWithRalewayFont(
                color: filterTitlesColor,
                fontSize: 20.sp,
                text: 'Rating',
                fontWeight: FontWeight.bold),
            ChoseMenuRating(),
            SizedBox(
              height: 20.h,
            ),
            RangeSliderFiltter(),
            SizedBox(
              height: 70.h,
            ),
            AuthButton(
              text: 'Apply Filter',
              press: () {},
            )
          ],
        ),
      ),
    );
  }
}
