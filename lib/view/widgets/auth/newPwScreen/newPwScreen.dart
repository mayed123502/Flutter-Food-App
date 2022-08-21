import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../utils/theme.dart';

class AuthTextFromFieldForget extends StatelessWidget {
  final TextEditingController controller;
  final bool obscureText;
  final Function validator;
  final Widget prefixIcon;
  final Widget suffixIcon;
  final String hintText;
  const AuthTextFromFieldForget({
    required this.controller,
    required this.obscureText,
    required this.validator,
    required this.prefixIcon,
    required this.suffixIcon,
    required this.hintText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      cursorColor:Theme.of(context).textTheme.headline1!.color,
      keyboardType: TextInputType.text,
      validator: (value) => validator(value),
      style:  TextStyle(
        color:Theme.of(context).textTheme.headline1!.color
      ),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
          fillColor:Get.isDarkMode?Theme.of(context).cardColor: authTextFromFieldFillColor.withOpacity(.3),
           prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hintText: hintText,
        hintStyle: TextStyle(
          color: authTextFromFieldHintTextColor,
          fontSize: 17.sp,
          fontWeight: FontWeight.w500,
        ),
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: authTextFromFieldFillColor.withOpacity(1),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: authTextFromFieldFillColor.withOpacity(1),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: authTextFromFieldFillColor.withOpacity(1)),
          borderRadius: BorderRadius.circular(15),
        ),
        errorBorder: OutlineInputBorder(
          borderSide:
              const BorderSide(color: authTextFromFieldErrorBorderColor),
          borderRadius: BorderRadius.circular(15),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide:
              const BorderSide(color: authTextFromFieldErrorBorderColor),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
