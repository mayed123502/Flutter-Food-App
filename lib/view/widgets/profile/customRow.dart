import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../textWithFont.dart';

class CustomRow extends StatelessWidget {
  const CustomRow({
    Key? key, required this.icon, required this.text,
  }) : super(key: key);
final IconData icon ;
final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
        ),
        SizedBox(
          width: 30.w,
        ),
        TextWithFont().textWithRobotoFont(
          text:text,
          fontSize: 14.sp,
          fontWeight: FontWeight.normal,
         color: Theme.of(context).textTheme.headline1!.color
        ),
      ],
    );
  }
}
