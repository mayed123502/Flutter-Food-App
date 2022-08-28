import 'package:ecommerce_app/utils/theme.dart';
import 'package:ecommerce_app/view/widgets/AllFood/choseMenu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../logic/controllers/food_controller.dart';

import '../category/choseMenuRating.dart';
import '../search/filter/rangeSlider.dart';
import '../textWithFont.dart';

final controller = Get.find<FodeController>();

class AppBarMeal extends StatelessWidget with PreferredSizeWidget {
  AppBarMeal({
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
          color: Theme.of(context).textTheme.headline1!.color),
      elevation: 0,
      centerTitle: true,
      leading: IconButton(
        onPressed: () => Get.back(),
        icon: Icon(
          Icons.arrow_back_ios,
          size: 20,
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {
            // Get.bottomSheet()
            appModalBottomSheet(context);
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.filter_alt_outlined),
          ),
        )
      ],
    );
  }
}

void appModalBottomSheet(BuildContext context) {
  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
      topLeft: Radius.circular(30),
      topRight: Radius.circular(30),
    )),
    builder: (context) {
      return Container(
        height: MediaQuery.of(context).size.height * 0.7,
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed: () {
                    controller.filterProdect(
                      category: controller
                          .allCategoriesList[controller.currentSeletected.value]
                          .title!,
                      price: controller.currentSeletectedSlider.value.toInt(),
                      rating: controller
                          .sizeList[controller.currentSeletectedRating.value],
                      subcategory: 'subcategory1',
                    );
                  },
                  child: Text(
                    'Apply',
                    style: TextStyle(color: mainColor),
                  ),
                ),
              ),
              TextWithFont().textWithRalewayFont(
                  color: Theme.of(context).textTheme.headline1!.color!,
                  fontSize: 20.sp,
                  text: 'Category',
                  fontWeight: FontWeight.bold),
              ChoseMenu(),
              SizedBox(
                height: 20.h,
              ),
              TextWithFont().textWithRalewayFont(
                  color: Theme.of(context).textTheme.headline1!.color!,
                  fontSize: 20.sp,
                  text: 'Type',
                  fontWeight: FontWeight.bold),
              ChoseMenu(),
              SizedBox(
                height: 20.h,
              ),
              TextWithFont().textWithRalewayFont(
                  color: Theme.of(context).textTheme.headline1!.color!,
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
            ],
          ),
        ),
      );
    },
  );
}
