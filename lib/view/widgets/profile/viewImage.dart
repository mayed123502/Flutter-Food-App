import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../logic/controllers/settings_controller.dart';
import '../../../utils/theme.dart';

class ViewImage extends StatelessWidget {
  ViewImage({
    Key? key,
  }) : super(key: key);
  final settingController = Get.find<SettingsController>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SettingsController>(
        // no need to initialize Controller ever again, just mention the type
        builder: (_) => Align(
              alignment: Alignment.center,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(1.0),
                    child: settingController.file.path != ''
                        ? Image.file(settingController.file,
                            height: 150.0.h, width: 150.w)
                        : Image.asset('assets/userimage.png',
                            height: 150.0.h, width: 150.w),
                  ),
                  Positioned(
                    top: 80.h,
                    right: 20.w,
                    child: GestureDetector(
                      onTap: () {
                        settingController.choose();
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        width: 35.w,
                        height: 35.h,
                        child: Icon(
                          Icons.mode_edit_outline_outlined,
                          color: mainColor,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ));
  }
}
