import 'package:ecommerce_app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../logic/controllers/restaurantPage_controller.dart';

import '../../routes/routes.dart';
import '../widgets/resturant/appBarRes.dart';
import '../widgets/resturant/cardRes.dart';
import '../widgets/resturant/imageRes.dart';
import '../widgets/resturant/resturantDetails.dart';

class ResturantScreen extends GetView<ResturantPageController> {
  const ResturantScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarRes(),
      body: Obx(() {
        return controller.loading.value
            ? Center(
                child: CircularProgressIndicator(
                  color: mainColor,
                ),
              )
            : Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Image.asset('assets/5.png'),
                    ImageRes(
                      imageUrl: controller.restaurantData.value.logo,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    ResturantDetails(
                      restaurantData: controller.restaurantData.value,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Divider(
                      thickness: 1.h,
                      color: Colors.grey.shade400,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),

                    Expanded(
                      flex: 3,
                      child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        itemCount:
                            controller.restaurantData.value.product?.length,
                        itemBuilder: (BuildContext context, int index) =>
                            GestureDetector(
                              onTap: () {
                                Get.toNamed(
                                  Routes.productDetailsScreen,
                                  arguments: [
                                    {
                                      'prodectData': controller
                                          .restaurantData.value.product![index]
                                    }
                                  ],
                                );
                              },
                              child: CardRes(
                                restaurantMeal: controller
                                    .restaurantData.value.product![index],
                              ),
                            ),
                      ),
                    ),
                  ],
                ),
              );
      }),
    );
  }
}
