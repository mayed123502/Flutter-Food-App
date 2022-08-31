import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../logic/controllers/reviewProduct_controllers.dart';
import '../../../utils/theme.dart';

class ReviewRating extends StatelessWidget {
  final reviewProductController = Get.find<RreviewProductController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              reviewProductController.currentSeletected.value = index;
              reviewProductController.showProductReviews(
                  reviewProductController.idProdect.toString(), reviewProductController.sizeList[index]);
                  // print('index $index');
            },
            child: Obx(
              () => Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 11, vertical: 10),
                decoration: BoxDecoration(
                  color: Get.isDarkMode
                      ? reviewProductController.currentSeletected.value == index
                          ? mainColor
                          : Colors.black
                      : reviewProductController.currentSeletected.value == index
                          ? mainColor
                          : Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: mainColor.withOpacity(0.4),
                    width: 2,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      reviewProductController.sizeList[index].toString(),
                      style: TextStyle(
                          color: Get.isDarkMode
                              ? reviewProductController
                                          .currentSeletected.value ==
                                      index
                                  ? Theme.of(context).textTheme.headline1!.color
                                  : Theme.of(context).textTheme.headline1!.color
                              : reviewProductController
                                          .currentSeletected.value ==
                                      index
                                  ? Colors.white
                                  : Colors.black.withOpacity(.3),
                          fontWeight: FontWeight.bold,
                          fontSize: 18.sp),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Icon(
                      Icons.star,
                      color: Color.fromRGBO(245, 201, 99, 1),
                      size: 18,
                    )
                  ],
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(
          width: 10,
        ),
        itemCount: reviewProductController.sizeList.length,
      ),
    );
  }
}
