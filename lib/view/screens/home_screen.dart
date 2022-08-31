import 'dart:math' as math;

import 'package:ecommerce_app/routes/routes.dart';
import 'package:ecommerce_app/services/helper/handlingdataview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../logic/controllers/home_controllers.dart';
import '../../logic/controllers/onboarding_home_controller.dart';

import '../../utils/sharPreferenceUtils .dart';
import '../../utils/theme.dart';
import '../widgets/home/appbarItem.dart';
import '../widgets/home/customRowHomePage.dart';
import '../widgets/home/foodsView.dart';
import '../widgets/home/onbordingItem.dart';
import '../widgets/home/resturantCard.dart';
import '../widgets/onboarding/onBoardingIndicator_home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = Get.find<OnBoardingHomeController>();
  final homeController = Get.find<HomeController>();
  Future<Null> _refreshLocalGallery() async {
    homeController.homeFoodsList.value = [];
    homeController.homeOfferList.value = [];
    homeController.homeRestaurantsList.value = [];

    homeController.viewHomeRestaurants();
    homeController.viewHomeFoods();
    homeController.viewHomeOffer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: RefreshIndicator(
      onRefresh: _refreshLocalGallery,
      child: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBarItem(),
            SizedBox(
              height: 12.h,
            ),
            GetBuilder<HomeController>(builder: (_) {
              return HandlingDataView(
                statusRequest: homeController.statusRequestOffer,
                widget: OfferShow(),
              );
            }),

            SizedBox(height: 13.h),
            OnBoardingIndicatorHome(
              margin: 3.w,
            ),
            SizedBox(
              height: 10.h,
            ),
            CustomRowHomePage(
              firstText: 'Resturant'.tr,
              scoindText: 'SeeMore'.tr,
              press: () {
                Get.toNamed(Routes.categoryScreen);
              },
            ),
            SizedBox(
              height: 10.h,
            ),

            // CircularProgressIndicator.adaptive(),

            GetBuilder<HomeController>(builder: (_) {
              return HandlingDataView(
                statusRequest: homeController.statusRequestRestaurant,
                widget: ResturantShow(),
              );
            }),
            SizedBox(
              height: 10.h,
            ),
            CustomRowHomePage(
                firstText: 'Popular foods'.tr,
                scoindText: 'SeeMore'.tr,
                press: () {
                  Get.toNamed(Routes.allFoodScreen);
                }),
            SizedBox(
              height: 10.h,
            ),

            GetBuilder<HomeController>(builder: (_) {
              return HandlingDataView(
                statusRequest: homeController.statusRequestFode,
                widget: FodeShow(),
              );
            }),
          ],
        ),
      ),
    ));
  }

  Align OfferShow() {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: 155.h,
        width: 342.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: onBoardingHomeScreen,
        ),
        child: PageView.builder(
          controller: controller.pageController,
          onPageChanged: (value) {
            controller.onPageChanged(value);
          },
          itemCount: homeController.homeOfferList.length,
          itemBuilder: (context, i) => GestureDetector(
            onTap: () {
              Get.toNamed(
                Routes.productDetailsScreen,
                arguments: [
                  {'prodectData': homeController.homeOfferList[i].product}
                ],
              );
            },
            child: OnBordingItem(
              offerListData: homeController.homeOfferList[i],
            ),
          ),
        ),
      ),
    );
  }

  Container FodeShow() {
    return Container(
      height: 200,
      width: double.infinity,
      padding: const EdgeInsets.only(left: 2),
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: homeController.homeFoodsList.length,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Get.toNamed(
                  Routes.productDetailsScreen,
                  arguments: [
                    {'prodectData': homeController.homeFoodsList[index]}
                  ],
                );
              },
              child: FoodsView(
                homeProdectData: homeController.homeFoodsList[index],
              ),
            );
          }),
    );
  }

  SizedBox ResturantShow() {
    return SizedBox(
      height: 100,
      child: Padding(
        padding: EdgeInsets.only(left: 12.w),
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: homeController.homeRestaurantsList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Get.toNamed(Routes.resturantScreen, arguments: [
                  {
                    "id":
                        homeController.homeRestaurantsList[index].id.toString(),
                  }
                ]);
              },
              child: ResturantCard(
                homeRestaurantsData: homeController.homeRestaurantsList[index],
              ),
            );
          },
        ),
      ),
    );
  }
}
