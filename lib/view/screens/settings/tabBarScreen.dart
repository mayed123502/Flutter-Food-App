// ignore_for_file: sort_child_properties_last

import 'package:ecommerce_app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../widgets/textWithFont.dart';

class TapBarScreen extends StatelessWidget {
  TapBarScreen({Key? key}) : super(key: key);
  List item = [
    {"title": "Button One", "color": 50},
    {"title": "Button Two", "color": 100},
    {"title": "Button Three", "color": 200},
    {"title": "No show", "color": 0, "hide": '1'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: 40.w,
          left: 20.w,
          right: 20.w,
        ),
        child: ListView.builder(
          itemCount: 8,
          itemBuilder: (context, i) {
            return Card(
              child: ListTile(
                title: Row(
                  children: [
                    ClipRRect(
                      child: SizedBox.fromSize(
                        size: Size.fromRadius(30), // Image radius
                        child: Image.asset('assets/hamburger.jpeg',
                            fit: BoxFit.cover),
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWithFont().textWithRalewayFont(
                            color:
                                Get.isDarkMode ? Colors.white : Colors.black,
                            fontSize: 18.sp,
                            text: 'Mc Donalds',
                            fontWeight: FontWeight.bold),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          children: [
                            TextWithFont().textWithRalewayFont(
                                color:
                                    Get.isDarkMode ? Colors.white : mainColor,
                                fontSize: 16.sp,
                                text: 'ID: ',
                                fontWeight: FontWeight.bold),
                            TextWithFont().textWithRalewayFont(
                                color: Get.isDarkMode
                                    ? Colors.white
                                    : Colors.black,
                                fontSize: 16.sp,
                                text: '25864',
                                fontWeight: FontWeight.normal),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 60.h,
                    ),
                    TextWithFont().textWithRalewayFont(
                        color: Get.isDarkMode ? Colors.white : Colors.green,
                        fontSize: 16.sp,
                        text: 'Waiting',
                        fontWeight: FontWeight.w500),
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
