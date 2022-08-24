import 'package:ecommerce_app/view/widgets/settings/costomColumn.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/routes.dart';
import '../../screens/settings/offer_screen.dart';

class CsutomCard extends StatelessWidget {
  const CsutomCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).secondaryHeaderColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
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
              Get.to(() => OfferScreen());
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
