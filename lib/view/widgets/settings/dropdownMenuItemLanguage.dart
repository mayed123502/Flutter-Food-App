// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, sort_child_properties_last

import 'package:ecommerce_app/view/widgets/textWithFont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../locale/locale.dart';
import '../../../logic/controllers/settings_controller.dart';
import '../../../utils/my_string.dart';

class DropdownMenuItemLanguage extends StatelessWidget {
  DropdownMenuItemLanguage({
    Key? key,
  }) : super(key: key);
  final controller = Get.find<SettingsController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Row(
        children: [
          Icon(Icons.language),
          SizedBox(
            width: 20.w,
          ),
          TextWithFont().textWithRobotoFont(
            text: 'Language',
            fontSize: 14.sp,
            fontWeight: FontWeight.normal,
            color: Colors.black,
          ),
          SizedBox(
            width: 74.w,
          ),
          Container(
            width: 90,
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                iconSize: 20,
                icon: Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black,
                ),
                items: [
                  DropdownMenuItem(
                    child: Text(
                      english,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                    value: ene,
                  ),
                  DropdownMenuItem(
                    child: Text(
                      arabic,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                    value: ara,
                  ),
                ],
                value: controller.langLocal?.value,
                onChanged: (value) {
                  MyLocaleController().changeLang(value!);

                  Get.updateLocale(Locale(value));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
