import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../utils/theme.dart';
import '../textWithFont.dart';

class SupTitle extends StatelessWidget {
  const SupTitle({
    Key? key, required this.supTitle, required this.price, required this.cal,
  }) : super(key: key);
final String supTitle;
final String price;
final String cal;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextWithFont().textWithRalewayFont(
              color: Theme.of(context).textTheme.headline1!.color!,
              fontSize: 12.sp,
              text: supTitle,
              fontWeight: FontWeight.w500),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const SizedBox(
                  height: 2,
                ),
                Text(
                  "Rs. $price",
                  style: TextStyle(
                    color: mainColor,
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset('assets/fir.png'),
                    TextWithFont().textWithRalewayFont(
                        color: Theme.of(context).textTheme.headline1!.color!,
                        fontSize: 14.sp,
                        text: '$cal Kcal',
                        fontWeight: FontWeight.w600),
                    SizedBox(
                      width: 15.w,
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}