import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../logic/controllers/auth_controllers.dart';

import '../../../utils/my_string.dart';
import '../../../utils/theme.dart';
import '../../widgets/auth/auth_button.dart';
import '../../widgets/auth/auth_textFromField.dart';
import '../../widgets/auth/login/LoginWith.dart';
import '../../widgets/auth/login/forgotPassword.dart';

import '../../widgets/auth/login/noAccountText.dart';
import '../../widgets/auth/login/socialLogin.dart';
import '../../widgets/auth/login/topImage.dart';
import '../../widgets/auth/login/topTitile.dart';

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
        body: SingleChildScrollView(
          child: Column(
            children: [
              TopImage(),
              SizedBox(
                width: double.infinity,
                height: 20.h,
              ),
              TopTitile(),
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
                              return 'Invalid email'.tr;
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
                          hintText: 'Email'.tr,
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        GetBuilder<AuthController>(
                          builder: (_) {
                            return AuthTextFromField(
                              controller: passwordController,
                              obscureText:
                                  controller.isVisibilty ? true : false,
                              validator: (value) {
                                if (value.toString().length < 6) {
                                  return 'Password should be longer or equal to 6 characters'
                                      .tr;
                                } else {
                                  return null;
                                }
                              },
                              prefixIcon: const Icon(
                                Icons.lock_outline,
                                size: 24,
                                color: authTextFromFieldHintTextColor,
                              ),
                              hintText: 'Password'.tr,
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
                        ForgotPassword(),
                        SizedBox(
                          height: 1.5.h,
                        ),
                        GetBuilder<AuthController>(builder: (_) {
                          return controller.loding
                              ? CircularProgressIndicator()
                              : AuthButton(
                                  text: 'Login'.tr,
                                  press: () {
                                    if (fromKey.currentState!.validate()) {
                                      String email =
                                          emailController.text.trim();
                                      String password = passwordController.text;

                                      controller.login(
                                          email: email, password: password);

                                          
                                    }
                                  },
                                );
                        }),
                        SizedBox(
                          height: 20.h,
                        ),
                        NoAccountText(),
                        SizedBox(
                          height: 45.h,
                        ),
                        LoginWithText(),
                        SocialLogin(),
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
