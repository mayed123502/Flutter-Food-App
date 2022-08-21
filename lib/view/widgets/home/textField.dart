import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../utils/theme.dart';

class HomeTextField extends StatelessWidget {
  const HomeTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      enabled: false,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
        prefixIcon: Icon(Icons.search,size: 30,),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
        hintText: 'Search for a food or resurant'.tr,
        filled: true,
        // fillColor: authTextFromFieldFillColor.withOpacity(.5),
        hintStyle: TextStyle(
          // color: authTextFromFieldHintTextColor,
          fontSize: 17.sp,
          fontWeight: FontWeight.w500,
        ),
    
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: authTextFromFieldFillColor),
          borderRadius: BorderRadius.circular(25),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide:  BorderSide(color: authTextFromFieldFillColor.withOpacity(.1)),
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    );
  }
}
