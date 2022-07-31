import 'package:ecommerce_app/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/auth/auth_button.dart';
import '../../widgets/category/choseMenuRating.dart';
import '../../widgets/profile/viewImage.dart';
import '../../widgets/review/appBarRev.dart';
import '../../widgets/review/cardRev.dart';
import '../../widgets/review/reviewRating.dart';
import '../../widgets/textWithFont.dart';

class AllReviewScreen extends StatelessWidget {
  const AllReviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarRev(),
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
                        return CardRev();
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



