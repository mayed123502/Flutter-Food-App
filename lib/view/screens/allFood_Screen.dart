import 'package:ecommerce_app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../enums/loading_types.dart';
import '../../logic/controllers/food_controller.dart';
import '../../routes/routes.dart';
import '../widgets/AllFood/appBarMeal.dart';
import '../widgets/AllFood/mealCard.dart';

class AllFoodScreen extends GetView<FodeController> {
  const AllFoodScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarMeal(),
        body: Obx(() {
          final loadingType = controller.loadingState.value.loadingType;
          return controller.isLoading.value
              ? Center(
                  child: CircularProgressIndicator(
                    color: mainColor,
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: GridView.builder(
                      physics: const BouncingScrollPhysics(),
                      controller: controller.scrollController,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      itemCount: loadingType == LoadingType.loading ||
                              loadingType == LoadingType.error ||
                              loadingType == LoadingType.completed
                          ? controller.allFoodsList.length + 1
                          : controller.allFoodsList.length,
                      itemBuilder: (context, index) {
                        final isLastItem =
                            index == controller.allFoodsList.length;
                        if (isLastItem && loadingType == LoadingType.loading) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CircularProgressIndicator.adaptive(),
                            ],
                          );
                        } else if (isLastItem &&
                            loadingType == LoadingType.error) {
                          return Container();
                        } else if (isLastItem &&
                            loadingType == LoadingType.completed) {
                          return Text(
                            controller.loadingState.value.completed.toString(),
                          );
                        } else {
                          return GestureDetector(
                            onTap: () {
                              Get.toNamed(
                                Routes.productDetailsScreen,
                                arguments: [
                                  {
                                    'prodectData':
                                        controller.allFoodsList[index]
                                  }
                                ],
                              );
                            },
                            child: MealCard(controller.allFoodsList[index]),
                          );
                        }
                      }),
                );
        }));
  }
}

// MealCard(controller.allFoodsList[index])
