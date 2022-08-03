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
              imageUrl: 'assets/bus.png',
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.toNamed(Routes.offerScreen);
            },
            child: CostomColumn(
              text: 'Offer'.tr,
              imageUrl: 'assets/icons/offer.png',
            ),
          ),
          CostomColumn(
            text: 'Address'.tr,
            imageUrl: 'assets/map.png',
          ),
        ],
      ),
    );
  }
}
