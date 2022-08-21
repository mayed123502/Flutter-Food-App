import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


import '../../../../utils/theme.dart';
import '../../widgets/auth/auth_button.dart';
import '../../widgets/auth/auth_textFromField.dart';
import '../../widgets/auth/preferredSizeInAppBar.dart';
import '../../widgets/textWithFont.dart';


class RestPasswordScreen extends StatelessWidget {
  final TextEditingController confirmController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.theme.backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor:  context.theme.appBarTheme.backgroundColor,
        title: TextWithFont().textWithRobotoFont(
            text: 'Rest Password',
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
            color: mainColor),
        bottom: const PreferredSizeInAppBar(),
        leading: GestureDetector(
          onTap: () => Get.back(),
          child:  Icon(
            Icons.arrow_back_ios,
            color: Get.isDarkMode ?Colors.white: Colors.black,
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
                  text: 'Update Your Password',
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
                  key: _form,
                  child: Column(children: [
                    AuthTextFromField(
                      controller: passwordController,
                      obscureText: false,
                      validator: (val) {
                        if (val.isEmpty) return 'Empty';
                        return null;
                      },
                      prefixIcon: const Icon(
                        Icons.lock_outline,
                        size: 24,
                        color: authTextFromFieldHintTextColor,
                      ),
                      hintText: 'Old Password',
                      suffixIcon: const Text(""),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    AuthTextFromField(
                      controller: confirmController,
                      obscureText: false,
                      validator: (val) {
                        if (val.isEmpty) return 'Empty';

                        if (val != passwordController.text) return 'Not Match';

                        return null;
                      },
                      prefixIcon: const Icon(
                        Icons.lock_outline,
                        size: 24,
                        color: authTextFromFieldHintTextColor,
                      ),
                      hintText: 'new Password',
                      suffixIcon: const Text(""),
                    ),
                  ]),
                )),
            SizedBox(
              height: 108.h,
            ),
            AuthButton(
              text: 'Update Password',
              press: () {
                _form.currentState?.validate();

                // Get.toNamed(Routes.forgotPasswordCodeScreen);
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
