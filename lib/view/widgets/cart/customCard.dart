import 'package:ecommerce_app/view/widgets/cart/customRow.dart';
import 'package:ecommerce_app/view/widgets/cart/mySeparator.dart';
import 'package:flutter/material.dart';

import '../../../utils/theme.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
    required this.total,
  }) : super(key: key);
  final String total;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shadowColor: Colors.grey.withOpacity(.3),
      child: Column(
        children: [
          // CustomRow(
          //   FontWeight.normal,
          //   Colors.black,
          //   name: 'Items (2)',
          //   price: '150\$',
          // ),
          CustomRow(
            FontWeight.normal,
            Colors.black,
            name: 'Shipping',
            price: '5\$',
          ),
          MySeparator(color: Colors.grey),
          CustomRow(
            FontWeight.bold,
            mainColor,
            name: 'Total Price',
            price: '$total\$',
          ),
        ],
      ),
    );
  }
}
