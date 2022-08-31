import 'package:ecommerce_app/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../utils/constant/imageasset.dart';
import '../../../../utils/theme.dart';
import '../../auth/auth_button.dart';
import '../../textWithFont.dart';

Future<dynamic> ShowModalBottomSheetDone(BuildContext context) {
  return showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      isScrollControlled: true,
      isDismissible: false,
      context: context,
      builder: (context) {
        return Container(
          color: Theme.of(context).cardColor,
          height: Get.height * 0.82,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.clear),
                  ),
                ],
              ),
              Image.asset(
                ImageAsset.vector4,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Thank You!",
                style: TextStyle(
                  color: mainColor,
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextWithFont().textWithRalewayFont(
                color: mainColor,
                text: 'for your order',
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextWithFont().textWithNunitoSansFont(
                  color: Theme.of(context)
                      .textTheme
                      .headline1!
                      .color!
                      .withOpacity(.6),
                  text:
                      "Your order is now being processed. We will let you know once the order is picked from the outlet. Check the status of your order",
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: AuthButton(
                      text: "Track My Order",
                      press: () {},
                    )),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: TextButton(
                  onPressed: () {
                    Get.toNamed(Routes.homeScreen);
                  },
                  child: Text(
                    "Back To Home",
                    style: TextStyle(
                      color: Theme.of(context)
                          .textTheme
                          .headline1!
                          .color!
                          .withOpacity(.6),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      });
}
