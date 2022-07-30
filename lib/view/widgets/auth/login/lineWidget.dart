import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/theme.dart';

class LineWidget extends StatelessWidget {
  final double  left;
  final double  right;

  const LineWidget({
    required this.left,
    required this.right,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
    padding: EdgeInsets.only(left: left, right: right),
    child: Container(
      height: .5,
      width: 87.w,
      color:Get.isDarkMode ? Colors.white.withOpacity(.8) : Colors.black38,
    ),
  );;
  }
}



