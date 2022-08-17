import 'package:ecommerce_app/routes/routes.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../logic/controllers/cart_controllers.dart';
import '../../widgets/auth/auth_button.dart';
import '../../widgets/cart/appBarCart.dart';
import '../../widgets/cart/customCard.dart';
import '../../widgets/cart/listViewItem.dart';

class CartScreen extends StatelessWidget {
  CartScreen({Key? key}) : super(key: key);
  final cartController = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCart(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Obx(() => SizedBox(
                    height: Get.height * .48,
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: cartController.cartDataList.length,
                      itemBuilder: (BuildContext context, int index) =>
                          ListViewItem(
                        cartData: cartController.cartDataList[index],
                      ),
                    ),
                  )),
              Obx(() {
                // print('${cartController.cartTotalPrice()} llll');
                return SizedBox(
                  height: Get.height * .4,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      // color: Colors.black,
                      children: [
                        SizedBox(
                          height: 15.h,
                        ),
                        CustomCard(
                          total: cartController.cartTotalPrice(),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        AuthButton(
                          text: 'Checkout',
                          onPressed: () {
                            Get.toNamed(Routes.checkoutScreen);
                          },
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
