import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../utils/theme.dart';

class ChoseMenuRating extends StatefulWidget {
  const ChoseMenuRating({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ChoseMenuRating createState() => _ChoseMenuRating();
}

class _ChoseMenuRating extends State<ChoseMenuRating> {
  final List<String> sizeList = [
    '1',
    '2',
    '3',
    '4',
    '5',
  ];

  var currentSeletected = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                currentSeletected = index;
              });
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 10),
              decoration: BoxDecoration(
                color: Get.isDarkMode
                    ? currentSeletected == index
                        ? mainColor
                        : Colors.black
                    : currentSeletected == index
                        ? mainColor
                        : Colors.white,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: mainColor.withOpacity(0.4),
                  width: 2,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    sizeList[index],
                    style: TextStyle(
                      color: Get.isDarkMode
                          ? currentSeletected == index
                              ? Colors.black
                              : Colors.black
                          : currentSeletected == index
                              ? Colors.white
                              : Colors.black.withOpacity(.3),
                      fontWeight: FontWeight.bold,
                      fontSize: 18.sp
                    ),
                  ),
                  SizedBox(width: 2.w,),
                  Icon(
                    Icons.star,
                    color: Color.fromRGBO(245, 201, 99, 1),
                    size: 18,
                  )
                ],
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(
          width: 10,
        ),
        itemCount: sizeList.length,
      ),
    );
  }
}
