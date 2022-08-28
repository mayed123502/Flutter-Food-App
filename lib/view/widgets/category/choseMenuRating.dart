import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../logic/controllers/food_controller.dart';
import '../../../utils/theme.dart';

class ChoseMenuRating extends StatelessWidget {
  final fodeController = Get.find<FodeController>();

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
                fodeController.currentSeletectedRating.value = index;
              },
              child: Obx(
                () => Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 11, vertical: 10),
                  decoration: BoxDecoration(
                    color: fodeController.currentSeletectedRating.value == index
                        ? mainColor
                        : Theme.of(context).textTheme.headline3!.color,
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
                        fodeController.sizeList[index].toString(),
                        style: TextStyle(
                            color:
                                fodeController.currentSeletectedRating.value ==
                                        index
                                    ? Colors.white
                                    : Theme.of(context)
                                        .textTheme
                                        .headline1!
                                        .color!
                                        .withOpacity(.3),
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
              ));
        },
        separatorBuilder: (context, index) => const SizedBox(
          width: 10,
        ),
        itemCount: fodeController.sizeList.length,
      ),
    );
  }
}
