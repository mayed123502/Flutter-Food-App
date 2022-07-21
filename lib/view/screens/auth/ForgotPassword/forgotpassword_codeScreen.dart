import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../routes/routes.dart';
import '../../../../utils/theme.dart';
import '../../../widgets/auth/auth_button.dart';
import '../../../widgets/auth/preferredSizeInAppBar.dart';
import '../../../widgets/textWithFont.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ForgotPasswordCodeScreen extends StatelessWidget {
  TextEditingController textEditingController = TextEditingController();

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
        leading:  GestureDetector(
          onTap:() => Get.back(),
          child:const  Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 37.h,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 38.sp),
                child: TextWithFont().textWithRobotoFont(
                    text: 'Check your email address',
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                    color: titleForgotPasswordScreen,
                    textAlign: TextAlign.center),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 38.sp),
                child: TextWithFont().textWithRobotoFont(
                    text: 'Enter the code',
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                    color: authLoginWithTextColor),
              ),
            ),
            SizedBox(
              height: 37.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 70.w, vertical: 30.h),
              child: PinCodeTextField(
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  fieldHeight: 50.h,
                  fieldWidth: 40.w,
                  selectedColor: Colors.orange.withOpacity(.5),
                  activeColor: Colors.orange,
                  inactiveColor: pinCodeTextFieldColor.withOpacity(.7),
                ),
                length: 4,
                obscureText: false,
                animationType: AnimationType.fade,
                animationDuration: const Duration(milliseconds: 300),
                onChanged: (value) {},
                appContext: context,
              ),
            ),
            SizedBox(
              height: 194.h,
            ),

            AuthButton(
              text: 'Reset Password',
              onPressed: () {
                Get.toNamed(Routes.forgotPasswordUpdateScreen);
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
