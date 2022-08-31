import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../logic/controllers/reviewProduct_controllers.dart';
import '../../../routes/routes.dart';
import '../../../utils/theme.dart';
import '../../widgets/review/ratingBar.dart';
import '../../widgets/textWithFont.dart';

class WriteReviewScreen extends StatelessWidget {
  WriteReviewScreen({Key? key}) : super(key: key);
  final reviewController = Get.find<RreviewProductController>();
  final _formKey = GlobalKey<FormState>();
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: TextWithFont().textWithRobotoFont(
            color: Theme.of(context).textTheme.headline1!.color,
            fontSize: 20.sp,
            text: 'Write Review',
            fontWeight: FontWeight.bold),
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40.h,
              ),
              TextWithFont().textWithRobotoFont(
                  color: Theme.of(context)
                      .textTheme
                      .headline1!
                      .color!
                      .withOpacity(.6),
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
                  color: Theme.of(context).textTheme.headline1!.color!,
                  fontSize: 14.sp,
                  text: 'Write Your Review',
                  fontWeight: FontWeight.w600),
              SizedBox(
                height: 8.h,
              ),
              Form(
                key: _formKey,
                child: TextFormField(
                  controller: myController,
                  minLines: 6,
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                    fillColor: Get.isDarkMode
                        ? Theme.of(context).cardColor
                        : authTextFromFieldFillColor.withOpacity(.3),
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
              ),
              SizedBox(
                height: Get.height * .1,
              ),
              GetBuilder<RreviewProductController>(builder: (_) {
                return Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          String feedback = myController.text.trim();
                          await reviewController.addReviewProduct(
                              feedback,
                              reviewController.rateing.toInt(),
                              reviewController.idProdect.toString());
                          // reviewController.showProductReviews(
                          //     reviewController.idProdect.toString());

                          Get.offNamed(Routes.allReviewScreen, arguments: {
                            'prodectId': reviewController.idProdect!.toInt()
                          });
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        shadowColor: Colors.white,
                        side: BorderSide.none,
                        // primary:,
                        minimumSize: Size(120.w, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: TextWithFont().textWithRobotoFont(
                        color: Colors.white,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                        text: 'Save',
                      )),
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
