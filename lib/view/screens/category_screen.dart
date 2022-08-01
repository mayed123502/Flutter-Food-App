import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../widgets/category/appBarCategory.dart';
import '../widgets/category/cardCatrgory.dart';
import '../widgets/category/choseMenu.dart';
import '../widgets/textWithFont.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarCategory(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWithFont().textWithRalewayFont(
                color: Get.isDarkMode ? Colors.white : Colors.black,
                fontSize: 20.sp,
                text: 'Category',
                fontWeight: FontWeight.w600),
            ChoseMenu(),
            SizedBox(
              height: 15.h,
            ),
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: 11,
                itemBuilder: (context, index) {
                  return CardCatrgory();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
