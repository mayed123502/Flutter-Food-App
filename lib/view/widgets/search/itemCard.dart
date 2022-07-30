import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/theme.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.grey.withOpacity(.5),
      elevation: 2,
      color: const Color.fromRGBO(252, 252, 252, 1),
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: 15.w, vertical: 15.h),
        child: Row(
          children: [
            ClipOval(
              child: SizedBox.fromSize(
                size: Size.fromRadius(30), // Image radius
                child: Image.asset('assets/res.jpeg',
                    fit: BoxFit.cover),
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mc Donalds',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: mainColor,
                    ),
                    Text(
                      '4.9',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              width: 80.w,
            ),
            IconButton(
              color: mainColor,
              onPressed: () {},
              icon: Icon(
                Icons.favorite_border,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
