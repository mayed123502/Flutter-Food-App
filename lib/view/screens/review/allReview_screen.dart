import 'package:ecommerce_app/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/auth/auth_button.dart';
import '../../widgets/category/choseMenuRating.dart';
import '../../widgets/profile/viewImage.dart';
import '../../widgets/review/reviewRating.dart';
import '../../widgets/textWithFont.dart';

class AllReviewScreen extends StatelessWidget {
  const AllReviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: TextWithFont().textWithRobotoFont(
            color: Get.isDarkMode ? Colors.white : Colors.black,
            fontSize: 20.sp,
            text: 'Review',
            fontWeight: FontWeight.bold),
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(
            Icons.arrow_back_ios,
            color: Get.isDarkMode ? Colors.white : Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Stack(
          children: [
            SafeArea(
              child: Column(
                children: [
                  ReviewRating(),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    width: double.infinity,
                    height: Get.height * .7,
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset('assets/profile.png',
                                        height: 90.0.h, width: 90.w),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      TextWithFont().textWithRobotoFont(
                                          color: Colors.black,
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.normal,
                                          text: 'Alaa Mahmoud'),
                                      RatingBar.builder(
                                        initialRating: 5,
                                        minRating: 1,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemCount: 5,
                                        itemSize: 20.0,
                                        itemPadding: const EdgeInsets.symmetric(
                                            horizontal: 0),
                                        itemBuilder: (context, _) => const Icon(
                                          Icons.star,
                                          color:
                                              Color.fromRGBO(245, 201, 99, 1),
                                        ),
                                        onRatingUpdate: (rating) {},
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0),
                                child: Text(
                                  " is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                                  style: GoogleFonts.nunitoSans(
                                    textStyle: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  maxLines: 3,
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0),
                                child: TextWithFont().textWithRalewayFont(
                                    color: Get.isDarkMode
                                        ? Colors.white
                                        : Colors.black,
                                    fontSize: 16.sp,
                                    text: 'March 22, 2022',
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(.2),
                  ),
                  child: AuthButton(
                    onPressed: () {
                      Get.toNamed(Routes.writeReviewScreen);
                    },
                    text: 'Write Review',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
