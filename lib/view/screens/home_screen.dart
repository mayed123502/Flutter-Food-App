import 'dart:math' as math;

import 'package:ecommerce_app/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../logic/controllers/onboarding_home_controller.dart';
import '../../utils/constant/imageasset.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          AppBarItem(),
          SizedBox(
            height: 12.h,
          ),
          Align(
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
                itemCount: 3,
                itemBuilder: (context, i) => OnBordingItem(),
              ),
            ),
          ),
          SizedBox(height: 13.h),
          OnBoardingIndicatorHome(
            margin: 3.w,
          ),
          SizedBox(
            height: 10.h,
          ),
          CustomRowHomePage(
            firstText: 'Resturant',
            scoindText: 'SeeMore',
          ),
          SizedBox(
            height: 10.h,
          ),
          SizedBox(
            height: 100,
            child: Padding(
              padding: EdgeInsets.only(left: 12.w),
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 11,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.resturantScreen);
                    },
                    child: ResturantCard(),
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          CustomRowHomePage(
            firstText: 'Popular foods',
            scoindText: 'SeeMore',
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            height: 200,
            width: double.infinity,
            padding: const EdgeInsets.only(left: 2),
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: ImageAsset().images.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return FoodsView(
                    imageUrl: ImageAsset().images[index],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
