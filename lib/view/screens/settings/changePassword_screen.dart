import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../logic/controllers/auth_controllers.dart';
import '../../../../utils/theme.dart';
import '../../../logic/controllers/settings_controller.dart';
import '../../../services/helper/statusrequest.dart';
import '../../widgets/auth/auth_button.dart';
import '../../widgets/auth/newPwScreen/newPwScreen.dart';
import '../../widgets/textWithFont.dart';

class UpdatePassword extends StatelessWidget {
  final TextEditingController oldPassController = TextEditingController();

  final TextEditingController confirmController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  final controller = Get.find<AuthController>();
  final settingController = Get.find<SettingsController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: TextWithFont().textWithRobotoFont(
          text: 'Change Password'.tr,
          fontSize: 22.sp,
          fontWeight: FontWeight.w500,
          color: Theme.of(context).textTheme.headline1!.color!.withOpacity(.6),
        ),
        elevation: 0,
      ),
      body: Container(
        width: Get.width,
        height: Get.height,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 20,
                ),
                TextWithFont().textWithRobotoFont(
                    text:
                        "Please enter your old and new password to change your password"
                            .tr,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context)
                        .textTheme
                        .headline1!
                        .color!
                        .withOpacity(.4),
                    textAlign: TextAlign.center),
                SizedBox(
                  height: 30,
                ),
                Form(
                  key: _form,
                  child: Column(children: [
                    AuthTextFromFieldForget(
                      controller: oldPassController,
                      obscureText: false,
                      validator: (val) {
                        if (val.isEmpty) return 'Empty'.tr;
                        return null;
                      },
                      prefixIcon: const Icon(
                        Icons.lock_outline,
                        size: 24,
                        color: authTextFromFieldHintTextColor,
                      ),
                      hintText: 'Old Password'.tr,
                      suffixIcon: const Text(""),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    AuthTextFromFieldForget(
                      controller: passwordController,
                      obscureText: false,
                      validator: (val) {
                        if (val.isEmpty) return 'Empty'.tr;
                        return null;
                      },
                      prefixIcon: const Icon(
                        Icons.lock_outline,
                        size: 24,
                        color: authTextFromFieldHintTextColor,
                      ),
                      hintText: 'Password'.tr,
                      suffixIcon: const Text(""),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    AuthTextFromFieldForget(
                      controller: confirmController,
                      obscureText: false,
                      validator: (val) {
                        if (val.isEmpty) return 'Empty'.tr;

                        if (val != passwordController.text)
                          return 'Not Match'.tr;

                        return null;
                      },
                      prefixIcon: const Icon(
                        Icons.lock_outline,
                        size: 24,
                        color: authTextFromFieldHintTextColor,
                      ),
                      hintText: 'Confirm Password'.tr,
                      suffixIcon: const Text(""),
                    ),
                  ]),
                ),
                SizedBox(
                  height: 20,
                ),
                GetBuilder<SettingsController>(builder: (_) {
                  return settingController.loding
                      ? Center(
                          child: CircularProgressIndicator(color: mainColor),
                        )
                      : AuthButton(
                          text: 'Update Password'.tr,
                          press: () {
                            if (_form.currentState!.validate()) {
                              String oldpassword =
                                  oldPassController.text.trim();
                              String newpassword = passwordController.text;
                              settingController.changePassword(
                                  old_password: oldpassword,
                                  password: newpassword);
                            }
                          });
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
