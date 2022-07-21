
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/theme.dart';

class AuthTextFromField extends StatelessWidget {
  final TextEditingController controller;
  final bool obscureText;
  final Function validator;
  final Widget prefixIcon;
  final Widget suffixIcon;
  final String hintText;
  const AuthTextFromField({
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
    return 
   
       TextFormField(
        
        controller: controller,
        obscureText: obscureText,
        cursorColor: Colors.black,
        keyboardType: TextInputType.text,
        validator: (value) => validator(value),
        style: const TextStyle(
          color: Colors.black,
        ),
        decoration: InputDecoration(
      contentPadding:const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),

          fillColor: authTextFromFieldFillColor,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          hintText: hintText,
          hintStyle:  TextStyle(
            color: authTextFromFieldHintTextColor,
            fontSize: 17.sp,
            fontWeight: FontWeight.w500,
          ),
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: authTextFromFieldPorderColor),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color:authTextFromFieldPorderColor),
            borderRadius: BorderRadius.circular(10),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: authTextFromFieldErrorBorderColor),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(10),
          ),
        ),

    );
  }
}