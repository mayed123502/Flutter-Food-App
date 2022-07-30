import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';

import '../../../logic/controllers/settings_controller.dart';
import '../../../logic/controllers/theme_controller.dart';
import '../textWithFont.dart';

class RowWithSwitchTheme extends StatelessWidget {
  RowWithSwitchTheme({
    Key? key,
    required this.text,
    required this.icon,
    required this.paddingSize,
  }) : super(key: key);
  final String text;
  final IconData icon;
  final double paddingSize;

  final controller = Get.find<SettingsController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Row(
        children: [
          Icon(icon),
          SizedBox(
            width: 20.w,
          ),
          TextWithFont().textWithRobotoFont(
            text: text,
            fontSize: 14.sp,
            fontWeight: FontWeight.normal,
            color: Colors.black,
          ),
          SizedBox(
            width: paddingSize,
          ),
          FlutterSwitch(
            height: 22.0,
            width: 55.0,
            padding: 1.5,
            toggleSize: 20.0,
            borderRadius: 13.0,
            activeColor: Color.fromRGBO(39, 174, 96, 1),
            value: controller.swithchThemwValue.value,
            onToggle: (value) {
              ThemeController().changesTheme();
              controller.swithchThemwValue.value = value;
              print(value);
            },
          ),
        ],
      ),
    );
  }
}
