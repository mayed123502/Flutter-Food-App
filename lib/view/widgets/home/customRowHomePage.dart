import 'package:ecommerce_app/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../utils/theme.dart';
import '../textWithFont.dart';

class CustomRowHomePage extends StatelessWidget {
  final String firstText;
  final String scoindText;
  final Function? press;

  CustomRowHomePage({
    required this.firstText,
    required this.scoindText,
    this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextWithFont().textWithRobotoFont(
            text: firstText,
            color: Theme.of(context).textTheme.headline1!.color,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          GestureDetector(
            onTap: press as void Function()?,
            child: TextWithFont().textWithRobotoFont(
              text: scoindText,
              color: mainColor,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
