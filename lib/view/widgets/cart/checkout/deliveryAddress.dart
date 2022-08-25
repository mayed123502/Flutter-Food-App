import 'package:ecommerce_app/view/widgets/textWithFont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DeliveryAddress extends StatelessWidget {
  const DeliveryAddress({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextWithFont().textWithRalewayFont(
          color:                                  Theme.of(context).textTheme.headline1!.color!.withOpacity(.5),

          fontSize: 16.sp,
          text: "Delivery Address",
          fontWeight: FontWeight.w500),
    );
  }
}