import 'package:clip_shadow/clip_shadow.dart';
import 'package:ecommerce_app/routes/routes.dart';
import 'package:ecommerce_app/utils/theme.dart';
import 'package:ecommerce_app/view/widgets/auth/auth_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

import '../widgets/productDetails/backIcon.dart';
import '../widgets/productDetails/customTriangle.dart';
import '../widgets/productDetails/description.dart';
import '../widgets/productDetails/descriptionText.dart';
import '../widgets/productDetails/imageShadow.dart';
import '../widgets/productDetails/itemCounter.dart';
import '../widgets/productDetails/ratingBarRev.dart';
import '../widgets/productDetails/reviewProduct.dart';
import '../widgets/productDetails/seeMore.dart';
import '../widgets/productDetails/showImage.dart';
import '../widgets/productDetails/supTitle.dart';
import '../widgets/productDetails/titelText.dart';
import '../widgets/textWithFont.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      SingleChildScrollView(
        child: Column(children: [
          Stack(
            children: [
              Stack(
                children: [
                  ShowImage(),
                  ImageShadow(),
                ],
              ),
              SafeArea(
                child: Column(
                  children: [
                    BackIcon(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.35,
                    ),
                    SizedBox(
                      height: Get.height*.64,
                      width: double.infinity,
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 30.0),
                            child: Container(
                              height: 700,
                              width: double.infinity,
                              padding: const EdgeInsets.symmetric(vertical: 30),
                              decoration: const ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(40),
                                    topRight: Radius.circular(40),
                                  ),
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TitelText(),
                                  SupTitle(),
                                  SizedBox(
                                    height: 10.h,
                                  ),

                                  ReviewProduct(),

                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20),
                                    child: Row(
                                      children: [
                                        RatingBarRev(),
                                        TextWithFont().textWithRalewayFont(
                                            color: Get.isDarkMode
                                                ? Colors.white
                                                : Colors.black,
                                            fontSize: 12.sp,
                                            text: '(4.5) 5 Review',
                                            fontWeight: FontWeight.w500),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              SeeMore(),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  // "Description",
                                  SizedBox(
                                    height: 20.h,
                                  ),

                                  Description(),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  DescriptionText(),

                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: Divider(
                                      color: Colors.grey.shade400,
                                      thickness: 1.5,
                                    ),
                                  ),

                                  ItemCounter(),

                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: AuthButton(
                                      onPressed: () {},
                                      text: 'Add to Cart',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 20,
                            ),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: ClipShadow(
                                clipper: CustomTriangle(),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.shade500,
                                    offset: Offset(0, 5),
                                    blurRadius: 5,
                                  ),
                                ],
                                child: Container(
                                    width: 60,
                                    height: 60,
                                    color: Colors.white,
                                    child: Icon(
                                      Icons.favorite,
                                      color: mainColor,
                                    )),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ]),
      )
    ]));
  }
}
