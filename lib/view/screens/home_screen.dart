import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../logic/controllers/onboarding_controller.dart';
import '../../utils/theme.dart';
import '../widgets/OnBoarding/onBoardingIndicator.dart';
import '../widgets/home/customRowHomePage.dart';
import '../widgets/textWithFont.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = Get.find<OnBoardingController>();
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      // backgroundColor: const Color.fromRGBO(244, 244, 244, 1),
      appBar: AppBar(elevation: 0),
      body: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 160.h,
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
                itemBuilder: (context, i) => Stack(
                  children: [
                    Positioned(
                      child: Image.asset(
                        'assets/onbordingHome.png',
                      ),
                      top: -3,
                      right: -20.w,
                    ),
                    Positioned(
                      top: 25.h,
                      left: 40.w,
                      child: TextWithFont().textWithRobotoFont(
                          text: 'Super food Sale \n 50% off',
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          textAlign: TextAlign.center),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 14.h),
          OnBoardingIndicator(
            controller: controller,
            margin: 3.w,
          ),
          SizedBox(
            height: 15.h,
          ),
          CustomRowHomePage(
            firstText: 'Resturant',
            scoindText: 'SeeMore',
          ),
          SizedBox(
            height: 15.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.w),
            child: SizedBox(
              height: 90.h,
              width: double.infinity,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 15,
                itemBuilder: (BuildContext context, int index) => Container(
                  margin: EdgeInsets.symmetric(horizontal: 8.w),
                  decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.circular(10)),
                  width: 85.w,
                  height: 85.h,
                  child: Column(children: [
                    Image.asset('assets/resturant1.png'),
                    TextWithFont().textWithRobotoFont(
                      text: 'Burger King',
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ]),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25.h,
          ),
          CustomRowHomePage(
            firstText: 'Popular foods',
            scoindText: 'SeeMore',
          ),
          SizedBox(
            height: 25.h,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: 4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:
                        (orientation == Orientation.portrait) ? 2 : 4,
                    crossAxisSpacing: 15.w,
                    childAspectRatio: 2 / 3,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15)),
                      child: Card(
                        // ignore: sort_child_properties_last
                        child: Padding(
                          padding: EdgeInsets.only(top: 14.h),
                          child: Column(
                            children: [
                              Image.asset('assets/gridview.png'),
                              SizedBox(
                                height: 1.h,
                              ),
                              TextWithFont().textWithRobotoFont(
                                text: 'Fried Rice',
                                fontSize: 18.sp,
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                              ),
                              SizedBox(
                                height: 3.h,
                              ),
                              TextWithFont().textWithRobotoFont(
                                text: '\$30.19',
                                fontSize: 18.sp,
                                fontWeight: FontWeight.normal,
                                color: priceColor,
                              ),
                              SizedBox(
                                height: 3.h,
                              ),
                              RatingBar.builder(
                                itemSize: 20,
                                initialRating: 5,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemPadding:
                                    const EdgeInsets.symmetric(horizontal: 0),
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              )
                            ],
                          ),
                        ),
                        elevation: 0,
                        color: Color.fromRGBO(244, 244, 244, 1),
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
