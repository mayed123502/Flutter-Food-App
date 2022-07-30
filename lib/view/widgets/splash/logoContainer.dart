import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/constant/imageasset.dart';
import '../../../utils/theme.dart';

class LogoContainer extends StatelessWidget {
  const LogoContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 134.w,
      decoration: BoxDecoration(shape: BoxShape.circle, color: fullColorLogo),
      child: Image.asset(
        ImageAsset.logo,
        width: 134.w,
        height: 134.h,
      ),
    );
  }
}
