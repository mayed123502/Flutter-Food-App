import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../logic/controllers/settings_controller.dart';
import '../../../services/baseAPI.dart';
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
                clipBehavior: Clip.none,
                children: [
                  CircleAvatar(
                    radius: 60,
                    child: ClipOval(
                      child: settingController.file.path != ''
                          ? Image.file(
                              settingController.file,
                              height: 150.0.h,
                              width: 150.w,
                              fit: BoxFit.fill,
                            )
                          : CachedNetworkImage(
                              imageUrl: settingController.image.value
                                      .contains('http')
                                  ? settingController.image.value
                                  : '${BaseAPI.baseImage}${settingController.image.value}',
                              placeholder: (context, url) =>
                                  CircularProgressIndicator(),
                              errorWidget: (context, url, error) => Icon(
                                Icons.person,
                                color: Colors.grey.shade700,
                                size: 100,
                              ),
                              width: 150.w,
                              height: 150.h,
                              fit: BoxFit.cover,
                            ),
                    ),
                  ),
                  Positioned(
                    top: 80.h,
                    right: 0.w,
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
