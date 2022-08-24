// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../logic/controllers/settings_controller.dart';
import '../../../utils/sharPreferenceUtils .dart';
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
      appBar: AppBarProfile(),
      body: SharedPrefs.instance.getString('token') == null
          ? Center(
              child: Text(
                "You must open an account".tr,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black.withOpacity(.5),
                ),
              ),
            )
          : SingleChildScrollView(
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
                      color: Theme.of(context).secondaryHeaderColor,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.w, vertical: 25.h),
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
