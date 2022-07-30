import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/theme.dart';

class TrailingListTile extends StatelessWidget {
  const TrailingListTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite,
              color: mainColor,
            ),
          ),
          Text(
            '80\$',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: mainColor,
            ),
          ),
          SizedBox(
            height: 26.h,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              elevation: 0.0,
              side: BorderSide(
                width: 2.0,
                color: mainColor,
              ),
              primary: Colors.white,
              minimumSize: Size(120.w, 30.h),
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(8), // <-- Radius
              ),
            ),
            child: Text(
              'Delete',
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w300),
            ),
          ),
        ]);
  }
}