// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app/utils/theme.dart';
import 'package:ecommerce_app/view/widgets/auth/auth_button.dart';
import 'package:ecommerce_app/view/widgets/cart/checkout/showModal0BottomSheetDone.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../logic/controllers/checkout_controller.dart';
import '../../../routes/routes.dart';
import '../../widgets/cart/checkout/addCardButton.dart';
import '../../widgets/cart/checkout/addres.dart';
import '../../widgets/cart/checkout/deliveryAddress.dart';
import '../../widgets/cart/checkout/listTileCard.dart';
import '../../widgets/cart/checkout/orderDetails.dart';
import '../../widgets/cart/checkout/paymentCard.dart';
import '../../widgets/cart/checkout/showModalBottomSheetCardbay.dart';
import '../../widgets/cart/checkout/showOrderDit.dart';

import '../../widgets/textWithFont.dart';

class CheckoutScreen extends StatelessWidget {
  CheckoutScreen({Key? key}) : super(key: key);
  final controller = Get.find<CheckoutController>();

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
                                  Theme.of(context).textTheme.headline1!.color!,
                              fontSize: 20.sp,
                              text: 'Checkout',
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    DeliveryAddress(),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GetBuilder<CheckoutController>(builder: (_) {
                            return Addres(
                              addres: controller.addres ?? 'Unknown',
                            );
                          }),
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
                    OrderDetails(),
                    Container(
                      height: MediaQuery.of(context).size.height * .35,
                      width: double.infinity,
                      child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTileCard();
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
                              color: Theme.of(context).textTheme.headline1!.color!.withOpacity(.8),
                              fontSize: 16.sp,
                              text: "Payment method",
                              fontWeight: FontWeight.w500),
                          TextButton(
                            onPressed: () {
                              ShowModalBottomSheetCardbay(context);
                            },
                            child: AddCardButton(),
                          ),
                        ],
                      ),
                    ),
                    PaymentCard(
                      widget: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Cash on delivery",style: TextStyle(color: Theme.of(context).textTheme.headline1!.color!.withOpacity(.6)),),
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
                              Text("**** **** **** 2187",style: TextStyle(color: Theme.of(context).textTheme.headline1!.color!.withOpacity(.6))),
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
                    ShowOrderDit(),
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
                press: () {
                  ShowModalBottomSheetDone(context);
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
