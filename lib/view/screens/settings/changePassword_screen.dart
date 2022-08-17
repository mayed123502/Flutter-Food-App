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
          text: 'Change Password',
          fontSize: 22.sp,
          fontWeight: FontWeight.w500,
          color: Colors.black.withOpacity(.6),
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
                        "Please enter your email to recieve a link to create a new password via email",
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(.4),
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
                    AuthTextFromFieldForget(
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
                      hintText: 'Password',
                      suffixIcon: const Text(""),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    AuthTextFromFieldForget(
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
                      hintText: 'Confirm Password',
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
                          text: 'Update Password',
                          onPressed: () {
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
