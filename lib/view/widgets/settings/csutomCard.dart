import 'package:ecommerce_app/view/widgets/settings/costomColumn.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/routes.dart';

class CsutomCard extends StatelessWidget {
  const CsutomCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          // ignore: prefer_const_constructors

          GestureDetector(
            onTap: () {
              Get.toNamed(Routes.myOrdersScreen);
            },
            child: CostomColumn(
              text: 'Orders'.tr,
              left: 65.0,
              right: 0.0,
              imageUrl: 'assets/bus.png',
            ),
          ),
          CostomColumn(
            text: 'Address'.tr,
            left: 0.0,
            right: 65.0,
            imageUrl: 'assets/map.png',
          ),
        ],
      ),
    );
  }
}
