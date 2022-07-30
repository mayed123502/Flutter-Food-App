import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/theme.dart';
import '../textWithFont.dart';

class GridViewItem extends StatelessWidget {
  const GridViewItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      // ignore: sort_child_properties_last
      child: Padding(
        padding: EdgeInsets.only(top: 14.h),
        child: Column(
          children: [
            Image.asset('assets/gridview.png'),
            SizedBox(
              height: 1.h,
            ),
            TextWithFont().textWithRobotoFont(
              text: 'Fried Rice',
              fontSize: 18.sp,
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),
            SizedBox(
              height: 3.h,
            ),
            TextWithFont().textWithRobotoFont(
              text: '\$30.19',
              fontSize: 18.sp,
              fontWeight: FontWeight.normal,
              color: priceColor,
            ),
            SizedBox(
              height: 3.h,
            ),
            RatingBar.builder(
              itemSize: 20,
              initialRating: 5,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding:
                  const EdgeInsets.symmetric(horizontal: 0),
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            )
          ],
        ),
      ),
      elevation: 0,
      color: Color.fromRGBO(244, 244, 244, 1),
    );
  }
}
