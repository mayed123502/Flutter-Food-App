import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../logic/controllers/food_controller.dart';
import '../../../../utils/theme.dart';
import '../../textWithFont.dart';

class RangeSliderFiltter extends StatelessWidget {
  final fodeController = Get.find<FodeController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() => Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWithFont().textWithRalewayFont(
                    color: Theme.of(context).textTheme.headline1!.color!,
                    fontSize: 20.sp,
                    text: 'Price Range',
                    fontWeight: FontWeight.bold),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '\$ ${fodeController.startLabel.value}',
                      style:
                          TextStyle(color: Colors.grey.shade500, fontSize: 12),
                    ),
                    Text(" - ", style: TextStyle(color: Colors.grey.shade500)),
                    Text(
                      '\$ ${fodeController.endLabel.value}',
                      style:
                          TextStyle(color: Colors.grey.shade500, fontSize: 12),
                    ),
                  ],
                ),
              ],
            )),
        SizedBox(
          height: 30.h,
        ),
        Obx(() => RangeSlider(
            values: fodeController.values.value,
            min: 0.00,
            max: 100.00,
            divisions: 10,
            inactiveColor: Colors.grey.shade300,
            activeColor: mainColor,
            labels: RangeLabels(
              '\$ ${fodeController.startLabel.value}',
              '\$ ${fodeController.endLabel.value}',
            ),
            onChanged: (RangeValues values) {
              fodeController.values.value = values;
              fodeController.currentSeletectedSlider.value =
                  values.end - values.start;
              fodeController.startLabel.value = values.start.toString();
              fodeController.endLabel.value = values.end.toString();
            })),
      ],
    );
  }
}
