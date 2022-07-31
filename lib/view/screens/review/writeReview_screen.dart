import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../utils/theme.dart';
import '../../widgets/review/ratingBar.dart';
import '../../widgets/textWithFont.dart';

class WriteReviewScreen extends StatelessWidget {
  const WriteReviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: TextWithFont().textWithRobotoFont(
            color: Get.isDarkMode ? Colors.white : Colors.black,
            fontSize: 20.sp,
            text: 'Write Review',
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40.h,
            ),
            TextWithFont().textWithRobotoFont(
                color: Get.isDarkMode
                    ? Colors.white
                    : Colors.black.withOpacity(.6),
                fontSize: 14.sp,
                text:
                    'Please write overall level of satisfaction with your shipping / Delivery Service',
                fontWeight: FontWeight.w500),
            SizedBox(
              height: 20.h,
            ),
            RatingBarReview(),
            SizedBox(
              height: 40.h,
            ),
            TextWithFont().textWithRobotoFont(
                color: Get.isDarkMode ? Colors.white : Colors.black,
                fontSize: 14.sp,
                text: 'Write Your Review',
                fontWeight: FontWeight.w600),
            SizedBox(
              height: 8.h,
            ),
            TextFormField(
              minLines: 6,
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                fillColor: Colors.grey.shade100.withOpacity(1),
                hintText: 'Write your review here',
                hintStyle: TextStyle(
                  color: authTextFromFieldHintTextColor,
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w500,
                ),
                filled: true,
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: authTextFromFieldPorderColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: authTextFromFieldPorderColor),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            SizedBox(
              height:Get.height*.1,
            ),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shadowColor: Colors.white,
                    side: BorderSide.none,
                    primary: context.theme.buttonColor,
                    minimumSize: Size(120.w, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // <-- Radius
                    ),
                  ),
                  child: TextWithFont().textWithRobotoFont(
                    color: Colors.white,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    text: 'Save',
                  )),
            ),
          ],
        ),
      ),
    );
  }
}