import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../utils/constant/imageasset.dart';
import '../../utils/theme.dart';
import '../widgets/resturant/appBarRes.dart';
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
                  child: Card(
                    elevation: 5,
                    shadowColor: Colors.grey.withOpacity(.3),
                    child: ListTile(
                      tileColor: Color.fromRGBO(252, 252, 252, 1),
                      title: Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset('assets/gridview.png',
                                  height: 70.0.h, width: 70.w),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWithFont().textWithRalewayFont(
                                    color: Get.isDarkMode
                                        ? Colors.white
                                        : Colors.black,
                                    fontSize: 18.sp,
                                    text: 'Burger',
                                    fontWeight: FontWeight.w500),
                                SizedBox(
                                  height: 15.h,
                                ),
                                Row(
                                  children: [
                                    Image.asset('assets/fire.png'),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    Text('500Cal',
                                        style: TextStyle(
                                          fontSize: 12,
                                        )),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 45.w,
                            ),
                            Text(
                              '5',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.grey.shade500,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Icon(
                              Icons.star,
                              color: mainColor,
                            ),
                          ],
                        ),
                      ),
                      trailing: Container(
                        width: 50.w,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextWithFont().textWithRalewayFont(
                                color: mainColor,
                                fontSize: 16.sp,
                                text: '75\$',
                                fontWeight: FontWeight.w500),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ImageRes extends StatelessWidget {
  const ImageRes({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: SizedBox.fromSize(
        size: Size.fromRadius(70), // Image radius
        child: Image.asset('assets/10.jpeg', fit: BoxFit.cover),
      ),
    );
  }
}



class ResturantDetails extends StatelessWidget {
  const ResturantDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            TextWithFont().textWithRalewayFont(
                color: filterTitlesColor,
                fontSize: 20.sp,
                text: 'Burger king',
                fontWeight: FontWeight.bold),
            SizedBox(
              width: 5.w,
            ),
            TextWithFont().textWithRobotoFont(
                color: dateColor,
                fontSize: 14.sp,
                text: 'Open(9:00am to 12pm)',
                fontWeight: FontWeight.w500),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          children: [
            SizedBox(
              width: 2.w,
            ),
            TextWithFont().textWithRalewayFont(
                color: Colors.black.withOpacity(.5),
                fontSize: 16.sp,
                text: 'Burger',
                fontWeight: FontWeight.w600),
            SizedBox(
              width: 10.w,
            ),
            Image.asset(
              ImageAsset.loc,
              width: 20.w,
              height: 20.h,
            ),
            TextWithFont().textWithRalewayFont(
                color: Colors.black.withOpacity(.5),
                fontSize: 16.sp,
                text: 'Al-Jalal Street',
                fontWeight: FontWeight.w500),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          children: [
            SizedBox(
              width: 5.w,
            ),
            TextWithFont().textWithRalewayFont(
                color: Colors.black.withOpacity(.5),
                fontSize: 16.sp,
                text: '4.9',
                fontWeight: FontWeight.w500),
            Icon(
              Icons.star,
              color: mainColor,
            ),
            SizedBox(
              width: 16.w,
            ),
            TextWithFont().textWithRalewayFont(
                color: Colors.black.withOpacity(.5),
                fontSize: 16.sp,
                text: '300+Rating',
                fontWeight: FontWeight.w500),
            SizedBox(
              width: 16.w,
            ),
            Icon(
              Icons.access_time,
            ),
            SizedBox(
              width: 10.w,
            ),
            TextWithFont().textWithRalewayFont(
                color: Colors.black.withOpacity(.5),
                fontSize: 16.sp,
                text: '12min',
                fontWeight: FontWeight.w500),
          ],
        ),
      ],
    );
  }
}
