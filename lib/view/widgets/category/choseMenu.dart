import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../logic/controllers/resturant_controller.dart';
import '../../../utils/theme.dart';

class ChoseMenu extends GetView<ResturantController> {
  ChoseMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Obx(
          () => ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  controller.currentSeletected.value = index;
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                    color: controller.currentSeletected.value == index
                        ? mainColor
                        : Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: mainColor.withOpacity(0.4),
                      width: 2,
                    ),
                  ),
                  child: Text(
                    controller.allCategoriesList[index]! as String,
                    style: TextStyle(
                      color: controller.currentSeletected.value == index
                          ? Colors.white
                          : Colors.black.withOpacity(.3),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(
              width: 10,
            ),
            itemCount: controller.allCategoriesList.length,
          ),
        ));
  }
}
