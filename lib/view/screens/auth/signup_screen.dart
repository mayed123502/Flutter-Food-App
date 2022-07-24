import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../logic/controllers/auth_controllers.dart';
import '../../../routes/routes.dart';
import '../../../utils/constant/imageasset.dart';
import '../../../utils/my_string.dart';
import '../../../utils/theme.dart';
import '../../widgets/auth/auth_button.dart';
import '../../widgets/auth/auth_textFromField.dart';
import '../../widgets/textWithFont.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);
  final fromKey = GlobalKey<FormState>();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

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
                child: Text(
                  'Creat a new account',
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              SizedBox(
                width: double.infinity,
                height: 0.75.sh,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 25, top: 30),
                  child: Form(
                    key: fromKey,
                    child: Column(children: [
                      AuthTextFromField(
                        controller: nameController,
                        obscureText: false,
                        validator: (value) {
                          if (value.toString().length <= 2 ||
                              !RegExp(validationName).hasMatch(value)) {
                            return 'Enter valid name';
                          } else {
                            return null;
                          }
                        },
                        prefixIcon: const Icon(
                          Icons.person_outline,
                          size: 24,
                          color: authTextFromFieldHintTextColor,
                        ),
                        suffixIcon: const Text(""),
                        hintText: 'Full name',
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
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
                        height: 15.h,
                      ),
                      AuthTextFromField(
                        controller: phoneController,
                        obscureText: false,
                        validator: (value) {
                          if (value.length != 10) {
                            return 'Mobile Number must be of 10 digit';
                          } else {
                            return null;
                          }
                        },
                        prefixIcon: const Icon(
                          Icons.phone_outlined,
                          size: 24,
                          color: authTextFromFieldHintTextColor,
                        ),
                        suffixIcon: const Text(""),
                        hintText: 'Phone number',
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      GetBuilder<AuthController>(
                        builder: (_) {
                          return AuthTextFromField(
                            controller: passwordController,
                            obscureText: controller.isVisibilty ? true : false,
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
                            hintText: 'new password',
                            suffixIcon: const Text(""),
                          );
                        },
                      ),
                      SizedBox(
                        height: 80.h,
                      ),
                      GetBuilder<AuthController>(builder: (_) {
                        return AuthButton(
                          text: 'Register',
                          onPressed: () {
                            if (fromKey.currentState!.validate()) {
                              String name = nameController.text.trim();
                              String email = emailController.text.trim();
                              String password = passwordController.text.trim();
                              String phone = phoneController.text.trim();
                              controller
                                  .signup(
                                phone: phone,
                                fullName: name,
                                password: password,
                                email: email,
                              )
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
                          TextWithFont().textWithRobotoFont(
                            text: 'Already have an account?',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            color: mainColor,
                          ),
                          TextButton(
                            onPressed: () {
                              Get.toNamed(Routes.loginScreen);
                            },
                            child: TextWithFont().textWithRobotoFont(
                              text: 'Login',
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                              color: authSignUpTextLoginColor,
                            ),
                          ),
                        ],
                      ),
                    ]),
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
