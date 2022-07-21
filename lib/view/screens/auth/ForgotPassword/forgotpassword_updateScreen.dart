import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../routes/routes.dart';
import '../../../../utils/my_string.dart';
import '../../../../utils/theme.dart';
import '../../../widgets/auth/auth_button.dart';
import '../../../widgets/auth/auth_textFromField.dart';
import '../../../widgets/auth/preferredSizeInAppBar.dart';
import '../../../widgets/textWithFont.dart';

class ForgotPasswordUpdateScreen extends StatelessWidget {
  final TextEditingController confirmController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: TextWithFont().textWithRobotoFont(
            text: 'Forget Password',
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
            color: mainColor),
        bottom: const PreferredSizeInAppBar(),
        leading: GestureDetector(
          onTap: () => Get.back(),
          child:const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 55.h,
            ),
            Align(
              alignment: Alignment.center,
              child: TextWithFont().textWithRobotoFont(
                  text: 'Please sign up to enter in app ',
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: titleForgotPasswordScreen,
                  textAlign: TextAlign.center),
            ),
            SizedBox(
              height: 38.h,
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Form(
                  child: Column(children: [
                    AuthTextFromField(
                      controller: passwordController,
                      obscureText: false,
                      validator: (value) {},
                      prefixIcon: const Icon(
                        Icons.lock_outline,
                        size: 24,
                        color: authTextFromFieldHintTextColor,
                      ),
                      hintText: 'Password',
                      suffixIcon: const Text(""),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    AuthTextFromField(
                      controller: confirmController,
                      obscureText: false,
                      validator: (value) {},
                      prefixIcon: const Icon(
                        Icons.lock_outline,
                        size: 24,
                        color: authTextFromFieldHintTextColor,
                      ),
                      hintText: 'Confirm Password',
                      suffixIcon: const Text(""),
                    ),
                  ]),
                )),
            SizedBox(
              height: 108.h,
            ),
            AuthButton(
              text: 'Update Password',
              onPressed: () {
                Get.toNamed(Routes.forgotPasswordCodeScreen);
                // emailController.text.isEmpty
                //     ? _validate = true
                //     : _validate = false;
              },
            ),
          ],
        ),
      ),
    );
  }
}
