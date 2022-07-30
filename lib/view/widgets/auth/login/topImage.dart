import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/constant/imageasset.dart';

class TopImage extends StatelessWidget {
  const TopImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      ImageAsset.login,
      height: 205.h,
      width: double.infinity,
      fit: BoxFit.fill,
    );
  }
}
