import 'package:clip_shadow/clip_shadow.dart';
import 'package:ecommerce_app/routes/routes.dart';
import 'package:ecommerce_app/utils/theme.dart';
import 'package:ecommerce_app/view/widgets/auth/auth_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';

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
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      'assets/hamburger.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.0, 0.4],
                        colors: [
                          Colors.black.withOpacity(0.9),
                          Colors.black.withOpacity(0.0),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SafeArea(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: const Icon(
                              Icons.arrow_back_ios_rounded,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.35,
                    ),
                    SizedBox(
                      height: 800,
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
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20),
                                    child: TextWithFont().textWithRalewayFont(
                                        color: Get.isDarkMode
                                            ? Colors.white
                                            : Colors.black,
                                        fontSize: 20.sp,
                                        text: 'Beef Burger',
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        TextWithFont().textWithRalewayFont(
                                            color: Get.isDarkMode
                                                ? Colors.white
                                                : Colors.black,
                                            fontSize: 12.sp,
                                            text: 'Cheesy Mazarella',
                                            fontWeight: FontWeight.w500),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              const SizedBox(
                                                height: 2,
                                              ),
                                              Text(
                                                "Rs. 750",
                                                style: TextStyle(
                                                  color: mainColor,
                                                  fontSize: 30,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Image.asset('assets/fir.png'),
                                                  TextWithFont()
                                                      .textWithRalewayFont(
                                                          color: Get.isDarkMode
                                                              ? Colors.white
                                                              : Colors.black,
                                                          fontSize: 14.sp,
                                                          text: '150 Kcal',
                                                          fontWeight:
                                                              FontWeight.w600),
                                                  SizedBox(
                                                    width: 15.w,
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20),
                                    child: TextWithFont().textWithRalewayFont(
                                        color: Get.isDarkMode
                                            ? Colors.white
                                            : Colors.black,
                                        fontSize: 15.sp,
                                        text: 'Review Product',
                                        fontWeight: FontWeight.bold),
                                  ),
                                  // const SizedBox(
                                  //   height: 10,
                                  // ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20),
                                    child: Row(
                                      children: [
                                        RatingBar.builder(
                                          initialRating: 5,
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 5,
                                          itemSize: 20.0,
                                          itemPadding:
                                              const EdgeInsets.symmetric(
                                                  horizontal: 0),
                                          itemBuilder: (context, _) =>
                                              const Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                          ),
                                          onRatingUpdate: (rating) {},
                                        ),
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
                                              // const SizedBox(
                                              //   height: 20,
                                              // ),
                                              TextButton(
                                                child: Text(
                                                  "See More",
                                                  style: TextStyle(
                                                    color: mainColor,
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                                onPressed: () {
                                                  Get.toNamed(Routes.allReviewScreen);
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  // "Description",

                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20),
                                    child: TextWithFont().textWithRalewayFont(
                                        color: Get.isDarkMode
                                            ? Colors.white
                                            : Colors.black,
                                        fontSize: 15.sp,
                                        text: 'Description',
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 20),
                                      child: ReadMoreText(
                                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare leo non mollis id cursus. Eu euismod faucibus in leo malesuada",
                                        trimLines: 2,
                                        // colorClickableText:mainColor,
                                        style: const TextStyle(
                                            color: Colors.black87,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w300),
                                        trimMode: TrimMode.Line,
                                        trimCollapsedText: 'Show more',
                                        trimExpandedText: 'Show less',

                                        moreStyle: TextStyle(
                                          color: mainColor,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        lessStyle: TextStyle(
                                          color: mainColor,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),),

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
                                  // const SizedBox(
                                  //   height: 10,
                                  // ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: Row(
                                      children: [
                                        // const Text(
                                        //   "Number of Portions",
                                        //   style: TextStyle(
                                        //     fontSize: 14,
                                        //   ),
                                        // ),
                                        Expanded(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              ElevatedButton(
                                                style: ButtonStyle(
                                                  shape:
                                                      MaterialStateProperty.all<
                                                          RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              18.0),
                                                    ),
                                                  ),
                                                  backgroundColor:
                                                      MaterialStateProperty.all(
                                                          mainColor),
                                                  elevation:
                                                      MaterialStateProperty.all(
                                                          5.0),
                                                ),
                                                onPressed: () {},
                                                child: Text("-"),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Container(
                                                height: 35,
                                                width: 55,
                                                decoration:
                                                    const ShapeDecoration(
                                                  shape: StadiumBorder(
                                                    side: BorderSide(
                                                        color: Colors.orange),
                                                  ),
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  // ignore: prefer_const_literals_to_create_immutables
                                                  children: [
                                                    const Text(
                                                      "2",
                                                      style: TextStyle(
                                                        color: Colors.orange,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              ElevatedButton(
                                                style: ButtonStyle(
                                                    shape: MaterialStateProperty
                                                        .all<
                                                            RoundedRectangleBorder>(
                                                      RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(18.0),
                                                      ),
                                                    ),
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all(mainColor),
                                                    elevation:
                                                        MaterialStateProperty
                                                            .all(5.0)),
                                                onPressed: () {},
                                                child: Text("+"),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: AuthButton(
                                        onPressed: () {},
                                        text: 'Add to Cart',
                                      )),
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

class CustomTriangle extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Offset controlpoint = Offset(size.width * 0, size.height * 0.5);
    Offset endpoint = Offset(size.width * 0.2, size.height * 0.85);
    Offset controlpoint2 = Offset(size.width * 0.33, size.height);
    Offset endpoint2 = Offset(size.width * 0.6, size.height * 0.9);
    Offset controlpoint3 = Offset(size.width * 1.4, size.height * 0.5);
    Offset endpoint3 = Offset(size.width * 0.6, size.height * 0.1);
    Offset controlpoint4 = Offset(size.width * 0.33, size.height * 0);
    Offset endpoint4 = Offset(size.width * 0.2, size.height * 0.15);

    Path path = new Path()
      ..moveTo(size.width * 0.2, size.height * 0.15)
      ..quadraticBezierTo(
        controlpoint.dx,
        controlpoint.dy,
        endpoint.dx,
        endpoint.dy,
      )
      ..quadraticBezierTo(
        controlpoint2.dx,
        controlpoint2.dy,
        endpoint2.dx,
        endpoint2.dy,
      )
      ..quadraticBezierTo(
        controlpoint3.dx,
        controlpoint3.dy,
        endpoint3.dx,
        endpoint3.dy,
      )
      ..quadraticBezierTo(
        controlpoint4.dx,
        controlpoint4.dy,
        endpoint4.dx,
        endpoint4.dy,
      );

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
