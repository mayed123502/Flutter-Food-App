import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../utils/constant/imageasset.dart';
import '../../utils/theme.dart';
import '../widgets/resturant/appBarRes.dart';
import '../widgets/resturant/cardRes.dart';
import '../widgets/resturant/imageRes.dart';
import '../widgets/resturant/resturantDetails.dart';
import '../widgets/textWithFont.dart';

class ResturantScreen extends StatelessWidget {
  const ResturantScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarRes(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Image.asset('assets/5.png'),
            ImageRes(),
            SizedBox(
              height: 20.h,
            ),
            ResturantDetails(),
            SizedBox(
              height: 5.h,
            ),
            Divider(
              thickness: 1.h,
              color: Colors.grey.shade400,
            ),
            SizedBox(
              height: 10.h,
            ),
            Expanded(
              flex: 3,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) => ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: CardRes(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

