import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/theme.dart';

class ChoseMenu extends StatefulWidget {
  const ChoseMenu({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ChoseMenu createState() => _ChoseMenu();
}

class _ChoseMenu extends State<ChoseMenu> {
  final List<String> sizeList = [
    'Pasta',
    'Burger',
    'Shawrema',
    'Salad',
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
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
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
              child: Text(
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
                ),
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
