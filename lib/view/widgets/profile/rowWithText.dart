import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../logic/controllers/profileSetting.dart';
import '../../../utils/theme.dart';

class RowWithText extends StatelessWidget {
  RowWithText({
    Key? key,
    required this.nameController,
  }) : super(key: key);

  final TextEditingController nameController;
  final controller = Get.find<ProfileSettingController>();
FocusNode inputNode = FocusNode();

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
              // autofocus:controller.enabled.value,
             
              enabled: controller.enabled.value,
              controller: nameController..text = 'Alaa Mahmoud',
              cursorColor: Colors.black,
              keyboardType: TextInputType.text,
              // validator: (value) {},
              style: GoogleFonts.raleway(
                textStyle: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                fillColor: Colors.white,
                // suffixIcon: suffixIcon,
                hintStyle: TextStyle(
                  color: authTextFromFieldHintTextColor,
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
