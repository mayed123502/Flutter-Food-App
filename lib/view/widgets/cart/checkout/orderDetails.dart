import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../textWithFont.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextWithFont().textWithRalewayFont(
              color:
                 Theme.of(context).textTheme.headline1!.color!.withOpacity(.8),
              fontSize: 16.sp,
              text: "Order Details ",
              fontWeight: FontWeight.w500),
        ],
      ),
    );
  }
}
