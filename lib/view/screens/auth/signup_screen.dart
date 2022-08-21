import 'package:ecommerce_app/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../logic/controllers/auth_controllers.dart';
import '../../../utils/my_string.dart';
import '../../../utils/theme.dart';
import '../../widgets/auth/auth_button.dart';
import '../../widgets/auth/auth_textFromField.dart';
import '../../widgets/auth/login/topImage.dart';
import '../../widgets/auth/register/haveAccountText.dart';
import '../../widgets/auth/register/topTitile.dart';

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
                height: 0.75.sh,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 25, top: 20),
                  child: Form(
                    key: fromKey,
                    child: Column(
                      children: [
                        // name TextFromField

                        AuthTextFromField(
                          controller: nameController,
                          obscureText: false,
                          validator: (value) {
                            if (value.toString().length <= 2 ||
                                !RegExp(validationName).hasMatch(value)) {
                              return 'Enter valid name'.tr;
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
                          hintText: 'Full name'.tr,
                        ),
                        SizedBox(
                          height: 15.h,
                        ),

                        // email TextFromField

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

                        // phone TextFromField

                        AuthTextFromField(
                          controller: phoneController,
                          obscureText: false,
                          validator: (value) {
                            if (value.length != 9) {
                              return 'Mobile Number must be of 10 digit'.tr;
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
                          hintText: 'Phone number'.tr,
                        ),
                        SizedBox(
                          height: 15.h,
                        ),

                        // password TextFromField

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
                              suffixIcon: const Text(""),
                            );
                          },
                        ),
                        SizedBox(
                          height: 70.h,
                        ),
                        GetBuilder<AuthController>(builder: (_) {
                          return controller.loding
                              ? CircularProgressIndicator()
                              : AuthButton(
                                  text: 'Register'.tr,
                                  press: () {
                                    if (fromKey.currentState!.validate()) {
                                      String name = nameController.text.trim();
                                      String email =
                                          emailController.text.trim();
                                      String password =
                                          passwordController.text.trim();
                                      String phone =
                                          phoneController.text.trim();
                                      controller.signup(
                                        phone: phone,
                                        fullName: name,
                                        password: password,
                                        email: email,
                                      );
                                    }
                                  },
                                );
                        }),
                        SizedBox(
                          height: 40.h,
                        ),
                        HaveAccountText()
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
