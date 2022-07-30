import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/theme.dart';

class ViewImage extends StatelessWidget {
  const ViewImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(1.0),
            child: Image.asset('assets/userimage.png',
                height: 150.0.h, width: 150.w),
          ),
          Positioned(
            top: 80.h,
            right: 20.w,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              width: 35.w,
              height: 35.h,
              child: Icon(
                Icons.mode_edit_outline_outlined,
                color: mainColor,
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
