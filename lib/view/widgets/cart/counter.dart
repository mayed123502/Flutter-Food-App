import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/theme.dart';

class Counter extends StatelessWidget {
  const Counter({
    Key? key,
    required this.text,
 required this.onPressed,
  }) : super(key: key);
  final String text;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // ignore: sort_child_properties_last
      child: Container(
        width: 20.w,
        height: 20.h,
        decoration: BoxDecoration(color: mainColor, shape: BoxShape.circle),
        child: Center(
          child: Text(
            text,
            style: TextStyle(color:  Theme.of(context).textTheme.headline3!.color, fontSize: 14,),
          ),
        ),
      ),
      onTap: onPressed,
    );
  }
}