import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/static/static.dart';
import '../../logic/controllers/onboarding_controller.dart';
import '../../routes/routes.dart';
import '../../utils/theme.dart';
import '../widgets/auth/auth_button.dart';
import '../widgets/textWithFont.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({Key? key}) : super(key: key);
  final controller = Get.find<OnBoardingController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Obx(
        () => Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                controller: controller.pageController,
                onPageChanged: (value) {
                  controller.onPageChanged(value);
                },
                itemCount: onBoardingList.length,
                itemBuilder: (context, i) => Column(
                  children: [
                    SizedBox(
                      height: 63.h,
                    ),
                    Image.asset(
                      onBoardingList[i].image!,
                      height: 262.h,
                      width: 312.06.w,
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    TextWithFont().textWithRobotoFont(
                        text: onBoardingList[i].title!,
                        fontSize: 28.sp,
                        textAlign: TextAlign.center,
                        fontWeight: FontWeight.bold,
                        color: mainColor),
                    // Text(
                    //   onBoardingList[i].title!,
                    //   style: GoogleFonts.roboto(
                    //     textStyle: TextStyle(
                    //         fontWeight: FontWeight.bold,
                    //         fontSize: 28.sp,
                    //         color: mainColor),
                    //   ),
                    //   textAlign: TextAlign.center,
                    // ),
                    SizedBox(
                      height: 30.h,
                    ),

                    TextWithFont().textWithRobotoFont(
                        text: onBoardingList[i].body!,
                        fontSize: 18.sp,
                        textAlign: TextAlign.center,
                        fontWeight: FontWeight.w300,
                        color: onBoardingDocsColor),

                    // Text(
                    //   onBoardingList[i].body!,
                    //   style: GoogleFonts.roboto(
                    //     textStyle: TextStyle(
                    //         fontWeight: FontWeight.w300,
                    //         fontSize: 18.sp,
                    //         color: onBoardingDocsColor),
                    //   ),
                    //   textAlign: TextAlign.center,
                    // ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ...List.generate(
                        onBoardingList.length,
                        (index) => AnimatedContainer(
                          margin: const EdgeInsets.only(right: 15),
                          duration: const Duration(milliseconds: 900),
                          width: 10.w,
                          // controller.currentIndex.value== index?6.w:
                          height: 10.h,
                          decoration: BoxDecoration(
                              color: controller.currentIndex.value == index
                                  ? mainColor
                                  : onBoardingIndcatorColor,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 60.h,
                  ),
                  controller.currentIndex.value != 2
                      ? Padding(
                          padding: EdgeInsets.symmetric(horizontal: 11.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: TextWithFont().textWithRobotoFont(
                                  text: 'Skip',
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold,
                                  color: onBoardingSkipButtonColor,
                                ),
                              ),
                              GestureDetector(
                                  onTap: () {
                                    controller.next();
                                  },
                                  child: CircleAvatar(
                                    radius: 40,
                                    backgroundColor:
                                        Colors.orange.withOpacity(.09),
                                    child: Text(
                                      'Next',
                                      style: GoogleFonts.nunitoSans(
                                        textStyle: TextStyle(
                                            fontSize: 20.sp,
                                            color: mainColor,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  )),
                            ],
                          ),
                        )
                      : Column(
                          children: [
                            AuthButton(
                              onPressed: () {
                                Get.toNamed(Routes.mainScreen);
                              },
                              text: 'Get Start',
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'I already have an account. ',
                                  style: GoogleFonts.nunitoSans(
                                    textStyle: TextStyle(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Get.toNamed(Routes.loginScreen);
                                  },
                                  child: Text(
                                    'Log in',
                                    style: GoogleFonts.nunitoSans(
                                      textStyle: TextStyle(
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
