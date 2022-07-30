import 'package:ecommerce_app/view/widgets/home/textField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../routes/routes.dart';

class AppBarItem extends StatelessWidget {
  const AppBarItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: (() {
              Get.toNamed(Routes.searchScreen);
            }),
            child: Padding(
              padding: EdgeInsets.only(
                  left: 20.w, top: 30.h, bottom: 25.h, right: 15.w),
              child: HomeTextField(),
            ),
          ),
        ),
        GestureDetector(
          onTap: (() {
            Get.toNamed(Routes.notificatonScreen);
          }),
          child: Padding(
            padding: EdgeInsets.only(right: 25.w, left: 0),
            child: const Icon(
              Icons.notifications_none_rounded,
              color: Colors.black,
              size: 30,
            ),
          ),
        ),
      ],
    );
  }
}
