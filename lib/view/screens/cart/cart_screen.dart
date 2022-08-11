import 'package:ecommerce_app/routes/routes.dart';
import 'package:ecommerce_app/utils/theme.dart';
import 'package:ecommerce_app/view/widgets/cart/customCard.dart';
import 'package:ecommerce_app/view/widgets/cart/customRow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../logic/controllers/cart_controllers.dart';
import '../../widgets/auth/auth_button.dart';
import '../../widgets/cart/appBarCart.dart';
import '../../widgets/cart/listViewItem.dart';
import '../../widgets/cart/mySeparator.dart';

class CartScreen extends StatelessWidget {
  CartScreen({Key? key}) : super(key: key);
  List<String> _values = ['One', 'Two', 'Three', 'Four', 'Five'];
  final cartController = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCart(),
      body: Obx(
        () => SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: Get.height * .48,
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: cartController.productsMap.length,
                    itemBuilder: (BuildContext context, int index) =>
                        ListViewItem(
                      homeProdectData:
                          cartController.productsMap.keys.toList()[index],
                      cartController: cartController,
                      index: index,
                      quantity:
                          cartController.productsMap.values.toList()[index],
                    ),
                  ),
                ),
                SizedBox(
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
                          total: cartController.total,
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
