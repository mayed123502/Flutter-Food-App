// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, sort_child_properties_last

import 'package:ecommerce_app/view/widgets/textWithFont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../locale/locale.dart';
import '../../../logic/controllers/settings_controller.dart';
import '../../../utils/my_string.dart';
import '../../../utils/sharPreferenceUtils .dart';

class DropdownMenuItemLanguage extends StatelessWidget {
  DropdownMenuItemLanguage({
    Key? key,
  }) : super(key: key);
  // final controller = Get.find<SettingsController>();
  @override
  Widget build(BuildContext context) {
    return ListTile(
     leading:   Icon(Icons.language,                color:Theme.of(context).textTheme.headline1!.color,
),
      
      title:  TextWithFont().textWithRobotoFont(
          text: 'Language'.tr,
          fontSize: 14.sp,
          fontWeight: FontWeight.normal,
          color: Theme.of(context).textTheme.headline1!.color,
        ),

      trailing:   Container(
          width: 90,
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              iconSize: 20,
              icon: Icon(
                Icons.arrow_drop_down,
                color:Theme.of(context).textTheme.headline1!.color,
              ),
              items: [
                DropdownMenuItem(
                  child: Text(
                    english,
                    style:  TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                      color: Theme.of(context).textTheme.headline1!.color,
                    ),
                  ),
                  value: ene,
                ),
                DropdownMenuItem(
                  child: Text(
                    arabic,
                    style:  TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                      color:Theme.of(context).textTheme.headline1!.color,
                    ),
                  ),
                  value: ara,
                ),
              ],
              value: SharedPrefs.instance.getString("curruntLang") == 'en'
                  ? 'en'
                  : 'ar',
              onChanged: (value) {
                MyLocaleController().changeLang(value!);
                Get.updateLocale(Locale(value));
              },
            ),
          ),
        ),
      
    );
  }
}
