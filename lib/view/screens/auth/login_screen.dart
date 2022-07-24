import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../logic/controllers/auth_controllers.dart';
import '../../../routes/routes.dart';
import '../../../utils/constant/imageasset.dart';
import '../../../utils/my_string.dart';
import '../../../utils/theme.dart';
import '../../widgets/auth/auth_button.dart';
import '../../widgets/auth/auth_textFromField.dart';
import '../../widgets/auth/gestureDetectorloginScreen.dart';
import '../../widgets/auth/lineWidget.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../widgets/textWithFont.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final fromKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final controller = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: context.theme.backgroundColor,
        body: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                ImageAsset.login,
                height: 205.h,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
              SizedBox(
                width: double.infinity,
                height: 20.h,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.only(left: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWithFont().textWithRalewayFont(
                        color: Get.isDarkMode ? Colors.white : Colors.black,
                        fontSize: 52.sp,
                        text: 'Login',
                        fontWeight: FontWeight.bold),
                    SizedBox(
                      height: 2.h,
                    ),
                    Text(
                      'Good to see you back!',
                      style: GoogleFonts.nunitoSans(
                        textStyle: TextStyle(
                          fontSize: 19.sp,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 0.62.sh,
                child: Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25, top: 30),
                  child: Form(
                    key: fromKey,
                    child: Column(
                      children: [
                        AuthTextFromField(
                          controller: emailController,
                          obscureText: false,
                          validator: (value) {
                            if (!RegExp(validationEmail).hasMatch(value)) {
                              return 'Invalid email';
                            } else {
                              return null;
                            }
                          },
                          prefixIcon: const Icon(
                            Icons.email_outlined,
                            size: 24,
                            color: authTextFromFieldHintTextColor,
                          ),
                          suffixIcon: const Text(""),
                          hintText: 'Email',
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        GetBuilder<AuthController>(
                          builder: (_) {
                            return AuthTextFromField(
                              controller: passwordController,
                              obscureText:
                                  controller.isVisibilty ? true : false,
                              validator: (value) {
                                if (value.toString().length < 6) {
                                  return 'Password should be longer or equal to 6 characters';
                                } else {
                                  return null;
                                }
                              },
                              prefixIcon: const Icon(
                                Icons.lock_outline,
                                size: 24,
                                color: authTextFromFieldHintTextColor,
                              ),
                              hintText: 'Password',
                              suffixIcon: IconButton(
                                onPressed: () {
                                  controller.visibility();
                                },
                                icon: controller.isVisibilty
                                    ? const Icon(
                                        Icons.visibility_off_outlined,
                                        color: authTextFromFieldHintTextColor,
                                        size: 24,
                                      )
                                    : const Icon(
                                        Icons.visibility_outlined,
                                        color: Colors.black,
                                      ),
                              ),
                            );
                          },
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: TextButton(
                            child: TextWithFont().textWithRalewayFont(
                              color: mainColor,
                              fontSize: 15.sp,
                              text: 'Forgot Password?',
                              fontWeight: FontWeight.w300,
                            ),
                            onPressed: () {
                              Get.toNamed(Routes.forgotPasswordScreen);
                            },
                          ),
                        ),
                        SizedBox(
                          height: 1.5.h,
                        ),
                        GetBuilder<AuthController>(builder: (_) {
                          return AuthButton(
                            text: 'Login',
                            onPressed: () {
                              if (fromKey.currentState!.validate()) {
                                String email = emailController.text.trim();
                                String password = passwordController.text;

                                controller
                                    .login(email: email, password: password)
                                    .then((value) {
                                  print(value);
                                });
                              }
                            },
                          );
                        }),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'I don\'t have an account.',
                              style: GoogleFonts.nunitoSans(
                                textStyle: TextStyle(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w200,
                                    color: mainColor),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Get.toNamed(Routes.signUpScreen);
                              },
                              child: Text(
                                'Sign up',
                                style: GoogleFonts.nunitoSans(
                                  textStyle: TextStyle(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w200,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            LineWidget(left: 0.0, right: 30.w),
                            TextWithFont().textWithRobotoFont(
                              text: "Login with",
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: 
                              
                              Get.isDarkMode ?Colors.blueAccent :authLoginWithTextColor,
                            ),
                            LineWidget(left: 30.w, right: 0.0),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.w, vertical: 13.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              DetectorloginScreen(
                                imageAsset: ImageAsset.facebook,
                              ),
                              DetectorloginScreen(
                                imageAsset: ImageAsset.google,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
