import 'package:ecommerce_app/routes/routes.dart';
import 'package:ecommerce_app/utils/theme.dart';
import 'package:ecommerce_app/view/widgets/cart/customCard.dart';
import 'package:ecommerce_app/view/widgets/cart/customRow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../widgets/auth/auth_button.dart';
import '../../widgets/cart/appBarCart.dart';
import '../../widgets/cart/listViewItem.dart';
import '../../widgets/cart/mySeparator.dart';

class CartScreen extends StatelessWidget {
  CartScreen({Key? key}) : super(key: key);
  List<String> _values = ['One', 'Two', 'Three', 'Four', 'Five'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarCart(),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 10.w),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: _values.length,
                itemBuilder: (BuildContext context, int index) => ListViewItem(
                  values: _values,
                  index: index,
                ),
              ),
            ),
            Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    // color: Colors.black,
                    children: [
                      SizedBox(
                        height: 15.h,
                      ),
                      CustomCard(),
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
                )),
          ],
        ),
      ),
    );
  }
}
