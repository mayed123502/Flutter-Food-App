import 'package:ecommerce_app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../textWithFont.dart';

class CardRes extends StatelessWidget {
  const CardRes({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shadowColor: Colors.grey.withOpacity(.3),
      child: ListTile(
        tileColor: Color.fromRGBO(252, 252, 252, 1),
        title: Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ClipOval(
                child: SizedBox.fromSize(
                  size: Size.fromRadius(35), // Image radius
                  child: Image.asset('assets/hamburger.jpg',
                      fit: BoxFit.cover),
                ),
              ),
              SizedBox(
                width: 20.w,
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
                      fontWeight: FontWeight.w600),
                  SizedBox(
                    height: 20.h,
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
                  ),
                  SizedBox(
                    width: 40.w,
                  ),
                  TextWithFont().textWithRalewayFont(
                      color: mainColor,
                      fontSize: 16.sp,
                      text: '75\$',
                      fontWeight: FontWeight.w500),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
