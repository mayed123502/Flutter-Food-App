import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../logic/controllers/auth_controllers.dart';
import '../../../../routes/routes.dart';
import '../../../../utils/my_string.dart';
import '../../../../utils/theme.dart';
import '../../../widgets/auth/auth_button.dart';
import '../../../widgets/auth/preferredSizeInAppBar.dart';
import '../../../widgets/textWithFont.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({Key? key}) : super(key: key);
  final TextEditingController emailController = TextEditingController();
  bool _validate = false;
  final controller = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.theme.backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor:  context.theme.appBarTheme.backgroundColor,
        title: TextWithFont().textWithRobotoFont(
            text: 'Forget Password',
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
            color: mainColor),
        bottom: const PreferredSizeInAppBar(),
        leading: GestureDetector(
          onTap: () => Get.back(),
          child:  Icon(
            Icons.arrow_back_ios,
            color:Get.isDarkMode ?Colors.white: Colors.black,
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
                  text: 'Enter email address for \n send code',
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: titleForgotPasswordScreen,
                  textAlign: TextAlign.center),
            ),
            SizedBox(
              height: 38.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 35.w),
              child: GetBuilder<AuthController>(builder: (_) {
                return TextField(
                    controller: emailController,
                    // validator:
                    decoration: InputDecoration(
                      errorText: controller.validate == false
                          ? 'Value Can\'t Be Empty'
                          : null,
                      contentPadding:
                          const EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: appBarPreferredSizeColor),
                        borderRadius: BorderRadius.circular(0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: authTextFromFieldErrorBorderColor),
                        borderRadius: BorderRadius.circular(0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: authTextFromFieldErrorBorderColor),
                        borderRadius: BorderRadius.circular(0),
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
              }),
            ),
            SizedBox(
              height: 160.h,
            ),
            // GetBuilder<AuthController>(builder: (_) {
            //   return

            AuthButton(
              text: 'Send Code',
              onPressed: () {
                Get.toNamed(Routes.forgotPasswordCodeScreen);

                // emailController.text.isEmpty
                //     ? controller.validaterFalse()
                //     : controller.validaterTrue();
              },
              //   );
              // }
            ),
          ],
        ),
      ),
    );
  }
}
