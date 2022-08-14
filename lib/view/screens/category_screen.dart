import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../enums/loading_types.dart';
import '../../logic/controllers/home_controllers.dart';
import '../../logic/controllers/resturant_controller.dart';
import '../widgets/category/appBarCategory.dart';
import '../widgets/category/cardCatrgory.dart';
import '../widgets/category/choseMenu.dart';
import '../widgets/textWithFont.dart';

class CategoryScreen extends GetView<ResturantController> {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(controller.allCategoriesList.length);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarCategory(),
      body: Obx(() {
        final loadingType = controller.loadingState.value.loadingType;

        return Padding(
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
              controller.isLoadingCategoriesList.value &&
                      controller.isLoadingRestaurants.value &&
                      controller.isLoadingRestaurantsWithOutPage.value
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : controller.currentSeletected.value == 0
                      ? Expanded(
                          child: ListView.builder(
                            controller: controller.scrollController,
                            physics: const BouncingScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: loadingType == LoadingType.loading ||
                                    loadingType == LoadingType.error ||
                                    loadingType == LoadingType.completed
                                ? controller.allRestaurantsList.length + 1
                                : controller.allRestaurantsList.length,
                            itemBuilder: (context, index) {
                              final isLastItem =
                                  index == controller.allRestaurantsList.length;
                              if (isLastItem &&
                                  loadingType == LoadingType.loading) {
                                return Center(
                                    child:
                                        CircularProgressIndicator.adaptive());
                              } else if (isLastItem &&
                                  loadingType == LoadingType.error) {
                                return Container();
                              } else if (isLastItem &&
                                  loadingType == LoadingType.completed) {
                                return Text(
                                  controller.loadingState.value.completed
                                      .toString(),
                                );
                              } else {
                                return CardCatrgory(
                                  controller.allRestaurantsList[index],
                                );
                              }
                            },
                          ),
                        )
                      : Expanded(
                          child: ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            shrinkWrap: true,
                            itemCount:
                                controller.allRestaurantsListWithOutPage.length,
                            itemBuilder: (context, index) {
                              print('${controller.allRestaurantsListWithOutPage[index].name}' +
                                  '${controller.allRestaurantsListWithOutPage[index].categories![0].title}');

                              return controller
                                          .allRestaurantsListWithOutPage[index]
                                          .categories![0]
                                          .title ==
                                      controller.allCategoriesList[
                                          controller.currentSeletected.value]
                                  ? CardCatrgory(
                                      controller
                                          .allRestaurantsListWithOutPage[index],
                                    )
                                  : Container();
                            },
                          ),
                        ),
            ],
          ),
        );
      }),
    );
  }
}
