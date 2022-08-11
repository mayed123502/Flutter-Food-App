// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../logic/controllers/settings_controller.dart';
import '../../widgets/profile/appBarProfile.dart';
import '../../widgets/profile/customRow.dart';
import '../../widgets/profile/rowWithText.dart';
import '../../widgets/profile/viewImage.dart';
import '../../widgets/textWithFont.dart';

class ProfileSetting extends StatelessWidget {
  ProfileSetting({Key? key}) : super(key: key);
  final TextEditingController nameController = TextEditingController();
  // final controller = Get.find<ProfileSettingController>();
  final settingController = Get.find<SettingsController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(226, 226, 227, 1),
      appBar: AppBarProfile(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50.h,
            ),
            ViewImage(),
            SizedBox(
              height: 50.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.w, vertical: 25.h),
                  child: Column(
                    children: [
                      RowWithText(
                        nameController: nameController,
                        name: settingController.name.value,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      CustomRow(
                        icon: Icons.email_outlined,
                        text: settingController.email.value,
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      CustomRow(
                        icon: Icons.phone_outlined,
                        text: settingController.phone.value,
                      ),
                    ],
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
