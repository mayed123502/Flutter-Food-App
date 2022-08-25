import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_app/view/widgets/textWithFont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../logic/controllers/settings_controller.dart';
import '../../../services/baseAPI.dart';
import '../../../utils/sharPreferenceUtils .dart';

class UserDetails extends StatelessWidget {
  UserDetails({
    Key? key,
    required this.settingsController,
  }) : super(key: key);
  final SettingsController settingsController;
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Get.isDarkMode ? Colors.white : Colors.blue,
            child: ClipOval(
              child: settingsController.image.value == 'null'
                  ? Image.asset(
                      'assets/icons/person.png',
                      fit: BoxFit.cover,
                    )
                  : CachedNetworkImage(
                      imageUrl: settingsController.image.value.contains('http')
                          ? settingsController.image.value
                          : '${BaseAPI.baseImage}${settingsController.image.value}',
                      placeholder: (context, url) =>
                          CircularProgressIndicator(),
                      errorWidget: (context, url, error) => Image.asset(
                        'assets/icons/person.png',
                        fit: BoxFit.cover,
                      ),
                      width: 100,
                      height: 100,
                      fit: BoxFit.fill,
                    ),
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWithFont().textWithRobotoFont(
                  color: Theme.of(context).textTheme.headline1!.color,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.normal,
                  text: SharedPrefs.instance.getString('token') == null
                      ? 'unknown'
                      : settingsController.name.value),
              TextWithFont().textWithRobotoFont(
                  color: Theme.of(context).textTheme.headline1!.color,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.normal,
                  text: SharedPrefs.instance.getString('token') == null
                      ? 'unknown'
                      : settingsController.email.value),
            ],
          )
        ],
      ),
    );
  }
}
