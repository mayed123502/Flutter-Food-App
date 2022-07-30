import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../logic/controllers/auth_controllers.dart';
import '../../../../utils/theme.dart';

class TextFieldForget extends StatelessWidget {
  const TextFieldForget({
    Key? key,
    required this.emailController,
    required this.controller,
  }) : super(key: key);

  final TextEditingController emailController;
  final AuthController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: emailController,
        // validator:

        decoration: InputDecoration(
          fillColor: authTextFromFieldFillColor.withOpacity(.5),
          filled: true,
          errorText: controller.validate == false
              ? 'Value Can\'t Be Empty'
              : null,
          contentPadding:
              const EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
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
            borderSide: BorderSide(
                color:
                    authTextFromFieldFillColor.withOpacity(1)),
            borderRadius: BorderRadius.circular(15),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                color: authTextFromFieldErrorBorderColor),
            borderRadius: BorderRadius.circular(15),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                color: authTextFromFieldErrorBorderColor),
            borderRadius: BorderRadius.circular(15),
          ),
          hintText: 'Email',
          prefixIcon: const Icon(
            Icons.email_outlined,
            size: 24,
            color: authTextFromFieldHintTextColor,
          ),
          hintStyle: TextStyle(
            color: authTextFromFieldHintTextColor,
            fontSize: 17.sp,
            fontWeight: FontWeight.w500,
          ),
        ));
  }
}
    
   