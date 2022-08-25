import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../logic/controllers/food_controller.dart';
import '../../../utils/theme.dart';

class ChoseMenu extends StatelessWidget {
  ChoseMenu({
    Key? key,
  }) : super(key: key);
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
              fodeController.currentSeletected.value = index;
            },
            child: Obx(
              ()=>Container(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: BoxDecoration(
                  color: fodeController.currentSeletected.value == index
                      ? mainColor
                      : Theme.of(context).textTheme.headline3!.color,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: mainColor.withOpacity(0.4),
                    width: 2,
                  ),
                ),
                child: Text(
                  fodeController.allCategoriesList[index].title!,
                  style: TextStyle(
                    color: fodeController.currentSeletected.value == index
                        ? Colors.white
                        : Theme.of(context)
                            .textTheme
                            .headline1!
                            .color!
                            .withOpacity(.5),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(
          width: 10,
        ),
        itemCount: fodeController.allCategoriesList.length,
      ),
    );
  }
}
