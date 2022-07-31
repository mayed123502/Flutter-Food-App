import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/routes.dart';
import '../../../utils/theme.dart';

class SeeMore extends StatelessWidget {
  const SeeMore({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Text(
        "See More",
        style: TextStyle(
          color: mainColor,
          fontSize: 10,
          fontWeight: FontWeight.w400,
        ),
      ),
      onTap: () {
        Get.toNamed(Routes.allReviewScreen);
      },
    );
  }
}