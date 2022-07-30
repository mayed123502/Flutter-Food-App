import 'package:ecommerce_app/view/widgets/textWithFont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserDetails extends StatelessWidget {
  const UserDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset('assets/profile.png',
              height: 90.0.h, width: 90.w),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWithFont().textWithRobotoFont(
                color: Colors.black,
                fontSize: 18.sp,
                fontWeight: FontWeight.normal,
                text: 'Alaa Mahmoud'),
            TextWithFont().textWithRobotoFont(
                color: Colors.black,
                fontSize: 13.sp,
                fontWeight: FontWeight.normal,
                text: 'alaa@gamil.com'),
          ],
        )
      ],
    );
  }
}
