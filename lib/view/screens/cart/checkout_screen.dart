// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app/utils/theme.dart';
import 'package:ecommerce_app/view/widgets/auth/auth_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../routes/routes.dart';
import '../../../utils/constant/imageasset.dart';
import '../../widgets/cart/counter.dart';
import '../../widgets/cart/customTextInput.dart';
import '../../widgets/textWithFont.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        SingleChildScrollView(
          child: Stack(
            children: [
              SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios_rounded,
                          ),
                        ),
                        Expanded(
                          child: TextWithFont().textWithRalewayFont(
                              color:
                                  Get.isDarkMode ? Colors.white : Colors.black,
                              fontSize: 20.sp,
                              text: 'Checkout',
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextWithFont().textWithRalewayFont(
                          color: Get.isDarkMode
                              ? Colors.white
                              : Colors.black.withOpacity(.5),
                          fontSize: 16.sp,
                          text: "Delivery Address",
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: TextWithFont().textWithRalewayFont(
                                color: Get.isDarkMode
                                    ? Colors.white
                                    : Colors.black.withOpacity(.8),
                                fontSize: 16.sp,
                                text: "653 Nostrand Ave., Brooklyn, NY 11216",
                                fontWeight: FontWeight.bold),
                          ),
                          TextButton(
                            onPressed: () {
                              Get.toNamed(Routes.changeAddressScreen);
                            },
                            child: Text(
                              "Change",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: mainColor),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 10,
                      width: double.infinity,
                      color: Colors.grey.withOpacity(.1),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWithFont().textWithRalewayFont(
                              color: Get.isDarkMode
                                  ? Colors.white
                                  : Colors.black.withOpacity(.5),
                              fontSize: 16.sp,
                              text: "Order Details ",
                              fontWeight: FontWeight.w500),
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * .35,
                      width: double.infinity,
                      child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            title: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Card(
                                  elevation: 5,
                                  shadowColor: Colors.grey.withOpacity(.3),
                                  child: ListTile(
                                    tileColor: Color.fromRGBO(252, 252, 252, 1),
                                    title: Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 10),
                                      child: Row(
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.asset(
                                                'assets/gridview.png',
                                                height: 70.0.h,
                                                width: 70.w),
                                          ),
                                          SizedBox(
                                            width: 8.w,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Pizza',
                                                style: TextStyle(
                                                    fontSize: 18.sp,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                              SizedBox(
                                                height: 8.h,
                                              ),
                                              Row(
                                                children: [
                                                  Image.asset(
                                                      'assets/fire.png'),
                                                  SizedBox(
                                                    width: 5.w,
                                                  ),
                                                  Text('500Cal',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                      )),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    trailing: Container(
                                      width: 100.w,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          SizedBox(
                                            height: 6.h,
                                          ),
                                          Text(
                                            '75\$',
                                            style: TextStyle(color: mainColor),
                                          ),
                                          SizedBox(
                                            height: 16.h,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Counter(
                                                text: '-',
                                                fun: () {},
                                              ),
                                              SizedBox(
                                                width: 4.w,
                                              ),
                                              Text('2'),
                                              SizedBox(
                                                width: 4.w,
                                              ),
                                              Counter(
                                                text: '+',
                                                fun: () {},
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 10,
                      width: double.infinity,
                      color: Colors.grey.withOpacity(.1),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWithFont().textWithRalewayFont(
                              color: Get.isDarkMode
                                  ? Colors.white
                                  : Colors.black.withOpacity(.5),
                              fontSize: 16.sp,
                              text: "Payment method",
                              fontWeight: FontWeight.w500),
                          TextButton(
                            onPressed: () {
                              showModalBottomSheet(
                                  // shape: RoundedRectangleBorder(
                                  //   borderRadius: BorderRadius.circular(20),
                                  // ),
                                  isScrollControlled: true,
                                  isDismissible: false,
                                  context: context,
                                  builder: (context) {
                                    return Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.72,
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              IconButton(
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                                icon: Icon(
                                                  Icons.clear,
                                                ),
                                              )
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20.0),
                                            child: Row(
                                              // ignore: prefer_const_literals_to_create_immutables
                                              children: [
                                                TextWithFont().textWithRalewayFont(
                                                    color: Get.isDarkMode
                                                        ? Colors.white
                                                        : Colors.black
                                                            .withOpacity(.5),
                                                    fontSize: 16.sp,
                                                    text:
                                                        "Add Credit/Debit Card",
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20.0),
                                            child: Divider(
                                              color: mainColor.withOpacity(0.5),
                                              thickness: 1.5,
                                              height: 40,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20.0),
                                            child: CustomTextInput(
                                                hintText: "card Number"),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                TextWithFont()
                                                    .textWithRalewayFont(
                                                        color: Get.isDarkMode
                                                            ? Colors.white
                                                            : Colors.black
                                                                .withOpacity(
                                                                    .5),
                                                        fontSize: 15.sp,
                                                        text: "Expiry",
                                                        fontWeight:
                                                            FontWeight.w500),
                                                SizedBox(
                                                  height: 50,
                                                  width: 100,
                                                  child: CustomTextInput(
                                                    hintText: "MM",
                                                    padding: EdgeInsets.only(
                                                        left: 35),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 50,
                                                  width: 100,
                                                  child: CustomTextInput(
                                                    hintText: "YY",
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20.0),
                                            child: CustomTextInput(
                                                hintText: "Security Code"),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20.0),
                                            child: CustomTextInput(
                                                hintText: "First Name"),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20.0),
                                            child: CustomTextInput(
                                                hintText: "Last Name"),
                                          ),
                                          SizedBox(
                                            height: 30,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20.0),
                                            child: SizedBox(
                                              height: 50,
                                              child: ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    primary: context
                                                        .theme.buttonColor,
                                                    minimumSize:
                                                        Size(337.w, 50),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12), // <-- Radius
                                                    ),
                                                  ),
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: const [
                                                      Icon(
                                                        Icons.add,
                                                      ),
                                                      SizedBox(width: 40),
                                                      Text("Add Card"),
                                                      SizedBox(width: 40),
                                                    ],
                                                  )),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  });
                            },
                            child: Row(
                              children: [
                                Icon(
                                  Icons.add,
                                  color: mainColor,
                                ),
                                Text(
                                  "Add Card",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: mainColor),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    PaymentCard(
                      widget: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Cash on delivery"),
                          Container(
                            width: 15,
                            height: 15,
                            decoration: ShapeDecoration(
                              shape: CircleBorder(
                                side: BorderSide(color: Colors.orange),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    PaymentCard(
                      widget: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 40,
                                child: Image.asset(
                                  "assets/visa2.png",
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text("**** **** **** 2187"),
                            ],
                          ),
                          Container(
                            width: 15,
                            height: 15,
                            decoration: ShapeDecoration(
                              shape: CircleBorder(
                                side: BorderSide(color: Colors.orange),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 10,
                      width: double.infinity,
                      color: Colors.grey.withOpacity(.1),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text("Sub Total"),
                              Text(
                                "\$68",
                                // style: Helper.getTheme(context).headline3,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text("Delivery Cost"),
                              Text(
                                "\$2",
                                // style: Helper.getTheme(context).headline3,
                              )
                            ],
                          ),
                          Divider(
                            height: 40,
                            color: mainColor.withOpacity(0.25),
                            thickness: 2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text("Total"),
                              Text(
                                "\$66",
                                // style: Helper.getTheme(context).headline3,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                    // Container(
                    //   height: 10,
                    //   width: double.infinity,
                    //   color: Colors.grey.withOpacity(.1),
                    // ),
                    // SizedBox(
                    //   height: 20,
                    // ),
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    //   child: SizedBox(
                    //     height: 50,
                    //     width: double.infinity,
                    //     child: AuthButton(
                    //       onPressed: () {},
                    //       text: 'Send Order',
                    //     ),
                    //   ),
                    // ),
                    SizedBox(
                      height: 60.h,
                    ),
                  ],
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
                  showModalBottomSheet(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      isScrollControlled: true,
                      isDismissible: false,
                      context: context,
                      builder: (context) {
                        return Container(
                          height: Get.height * 0.82,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    icon: Icon(Icons.clear),
                                  ),
                                ],
                              ),
                              Image.asset(
                                ImageAsset.vector4,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Thank You!",
                                style: TextStyle(
                                  color: mainColor,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 30,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextWithFont().textWithRalewayFont(
                                color: mainColor,
                                text: 'for your order',
                                fontSize: 20.sp,
                                fontWeight: FontWeight.bold,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0),
                                child: TextWithFont().textWithNunitoSansFont(
                                  color: Colors.black.withOpacity(.6),
                                  text:
                                      "Your order is now being processed. We will let you know once the order is picked from the outlet. Check the status of your order",
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                child: SizedBox(
                                    height: 50,
                                    width: double.infinity,
                                    child: AuthButton(
                                      text: "Track My Order",
                                      onPressed: () {},
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Back To Home",
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      });
                },
                text: 'Send Order',
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

class PaymentCard extends StatelessWidget {
  const PaymentCard({
    required Widget widget,
  }) : _widget = widget;

  final Widget _widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
          height: 50,
          width: double.infinity,
          padding: const EdgeInsets.only(
            left: 30,
            right: 20,
          ),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(
                color: Colors.grey.withOpacity(.1),
              ),
            ),
            color: Colors.grey.withOpacity(.1),
          ),
          child: _widget),
    );
  }
}
