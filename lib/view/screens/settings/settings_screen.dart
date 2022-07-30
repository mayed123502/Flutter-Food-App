// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:ecommerce_app/view/widgets/settings/rowWithSwitchTheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/settings/csutomCard.dart';
import '../../widgets/settings/dropdownMenuItemLanguage.dart';
import '../../widgets/settings/rowWithSwitchNotification.dart';
import '../../widgets/settings/rowWithoutSwitchPassword.dart';
import '../../widgets/settings/rowWithoutSwitchProfile.dart';
import '../../widgets/settings/userDetails.dart';
import '../../widgets/textWithFont.dart';
import 'dart:math' as math;

class SettingsScreen extends StatelessWidget {
  SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(226, 226, 227, 1),
      body: Padding(
        padding: const EdgeInsets.all(30).r,
        child: Column(
          children: [
            UserDetails(),
            CsutomCard(),
            SizedBox(
              height: 15.h,
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 25.h),
                child: Column(
                  children: [
                    RowWithoutSwitchProfile(
                      text: 'Manage Profile',
                      icon: Icons.person_outline,
                      paddingSize: 0,
                      sizedBoxWidth: 120.w,
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    RowWithoutSwitchPassword(
                      text: 'Change Password',
                      icon: Icons.lock_outline,
                      paddingSize: 0,
                      sizedBoxWidth: 100.w,
                      // Get.toNamed(Routes.restPasswordScreen);
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    RowWithSwitchNotification(
                      text: 'Notification',
                      icon: Icons.notifications_none_outlined,
                      paddingSize: 110.w,
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    DropdownMenuItemLanguage(),
                    SizedBox(
                      height: 40.h,
                    ),
                    RowWithSwitchTheme(
                      text: 'Theme Mode',
                      icon: Icons.color_lens_outlined,
                      paddingSize: 100.w,
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Row(
                      children: [
                        Transform.rotate(
                            angle: 180 * math.pi / 180,
                            child: Icon(
                              Icons.logout_outlined,
                            )),
                        SizedBox(
                          width: 20.w,
                        ),
                        TextWithFont().textWithRobotoFont(
                          text: 'Logout',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
