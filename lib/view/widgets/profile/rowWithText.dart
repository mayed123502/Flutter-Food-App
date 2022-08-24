import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../logic/controllers/profileSetting.dart';
import '../../../logic/controllers/settings_controller.dart';
import '../../../utils/theme.dart';

class RowWithText extends StatelessWidget {
  RowWithText({
    Key? key,
    required this.nameController,
    required this.name,
  }) : super(key: key);

  final TextEditingController nameController;
  final controller = Get.find<ProfileSettingController>();
  final settingController = Get.find<SettingsController>();

  FocusNode inputNode = FocusNode();
  final String name;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Row(
        children: [
          Icon(
            Icons.person_outline,
          ),
          SizedBox(
            width: 20.w,
          ),
          SizedBox(
            width: 150,
            child: TextField(
              enabled: controller.enabled.value,
              controller: nameController..text = name,
              cursorColor: Colors.black,
              keyboardType: TextInputType.text,
              // validator: (value) {},
              style: GoogleFonts.raleway(
                textStyle: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).textTheme.headline1!.color),
              ),
              onChanged: (value) {
                settingController.nameFromTextFild.value = value;
                print(settingController.nameFromTextFild.value);
              },
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                fillColor:Theme.of(context).secondaryHeaderColor,
                hintStyle: TextStyle(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w500,
                ),
                filled: true,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color:
                        controller.enabled.value ? Colors.black : Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: authTextFromFieldPorderColor),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 50.w),
            child: GestureDetector(
              onTap: () {
                controller.ChangeEnabled();
                print(controller.enabled.value);
              },
              child: Icon(
                Icons.mode_edit_outline_outlined,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
