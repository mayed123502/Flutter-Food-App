import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../widgets/textWithFont.dart';

class NotificatonScreen extends StatelessWidget {
  const NotificatonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(
            Icons.arrow_back_ios,
            color: Get.isDarkMode ? Colors.white : Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: ListView.builder(
          itemCount: 5,
 
          itemBuilder: (context, index) {
            return Card(
              // elevation: 0,
              child: Padding(
                padding:  EdgeInsets.symmetric(vertical:15.h,horizontal: 5.w ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset('assets/gridview.png',
                          height: 70.0.h, width: 70.w),
                    ),
                    SizedBox(
                      width: 10.h,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextWithFont().textWithRalewayFont(
                            color: Get.isDarkMode ? Colors.white : Colors.black,
                            fontSize: 16.sp,
                            text: 'Lorem Ipsum',
                            fontWeight: FontWeight.bold),
                        SizedBox(
                          height: 5.h,
                        ),
                        TextWithFont().textWithRalewayFont(
                            color: Get.isDarkMode ? Colors.white : Colors.black,
                            fontSize: 14.sp,
                            text: 'simply dummy text of the printing',
                            fontWeight: FontWeight.w500),
                        SizedBox(
                          height: 5.h,
                        ),
                        Row(
                          children: [
                            TextWithFont().textWithRalewayFont(
                                color: Get.isDarkMode
                                    ? Colors.white
                                    : Colors.black.withOpacity(.6),
                                fontSize: 14.sp,
                                text: 'Today',
                                fontWeight: FontWeight.w400),
                            SizedBox(
                              width: 100.h,
                            ),
                            TextWithFont().textWithRalewayFont(
                                color: Get.isDarkMode
                                    ? Colors.white
                                    : Colors.black.withOpacity(.6),
                                fontSize: 14.sp,
                                text: '12:00Pm',
                                fontWeight: FontWeight.w400),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
