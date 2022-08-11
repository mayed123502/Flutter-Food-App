import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../utils/theme.dart';

class TrailingListTile extends StatelessWidget {
  const TrailingListTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {},
          child: Icon(
            Icons.favorite,
            color: mainColor,
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Text(
          '80\$',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: mainColor,
          ),
        ),
      ],
    );
  }
}
