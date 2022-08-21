import 'package:ecommerce_app/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../logic/controllers/auth_controllers.dart';
import '../../../../utils/theme.dart';
import '../../../widgets/auth/auth_button.dart';
import '../../../widgets/auth/forgotPassword/sendButton.dart';
import '../../../widgets/auth/sendOTPScreen/pinCodeTextFieldOTP.dart';
import '../../../widgets/textWithFont.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class SendOTPScreen extends StatelessWidget {
  TextEditingController textEditingController = TextEditingController();
  final controller = Get.find<AuthController>();
  final formKey = GlobalKey<FormState>();
  final TextEditingController code = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: TextWithFont().textWithRobotoFont(
            text: 'OTP',
            fontSize: 22.sp,
            fontWeight: FontWeight.w500,
            color: Colors.black.withOpacity(.6),
          ),
          elevation: 0,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                // TextWithFont().textWithRobotoFont(
                //     text: 'We have sent you an OTP to your Mobile',
                //     fontSize: 20.sp,
                //     fontWeight: FontWeight.w500,
                //     color: Colors.black.withOpacity(.6),
                //     textAlign: TextAlign.center),
                SizedBox(
                  height: 20,
                ),
                TextWithFont().textWithRobotoFont(
                    text:
                        "Please check your mobile number 071*****12 continue to reset your password",
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(.4),
                    textAlign: TextAlign.center),
                SizedBox(
                  height: 50,
                ),

                Container(
                  width: double.infinity,
                  height: Get.height * .1,
                  child: GetBuilder<AuthController>(builder: (_) {
                    return Form(
                      key: formKey,
                      child: PinCodeTextFieldOTP(
                        controller: controller,
                        controllerText: code,
                        validator: (value) {
                          if (value.toString().length < 6) {
                            return 'Code should be equal to 6 characters'.tr;
                          } else {
                            return null;
                          }
                        },
                      ),
                    );
                  }),
                ),
                // ),
                SizedBox(
                  height: 20,
                ),
                GetBuilder<AuthController>(builder: (_) {
                  return controller.loding
                      ? CircularProgressIndicator()
                      : AuthButton(
                          text: 'Next',
                          press: () {
                            if (formKey.currentState!.validate()) {
                              String codeRes = code.text.trim();
                              controller.resetPasswordStep2(code: codeRes);
                            }
                            // Get.toNamed(Routes.newPwScreen);
                          });
                }),

                SizedBox(height: 20),
              ],
            ),
          ),
        ));
  }
}


    
    
    
    
    
    
    
    
    
    
    
    
//     Scaffold(
//         backgroundColor: context.theme.backgroundColor,
//       appBar: AppBar(
//         elevation: 0,

//         backgroundColor:  context.theme.appBarTheme.backgroundColor,
//         title: TextWithFont().textWithRobotoFont(
//             text: 'Forget Password',
//             fontSize: 20.sp,
//             fontWeight: FontWeight.bold,
//             color: mainColor),
//         bottom: const PreferredSizeInAppBar(),
//         leading: GestureDetector(
//           onTap: () => Get.back(),
//           child:  Icon(
//             Icons.arrow_back_ios,
//             color:
//              Get.isDarkMode ?Colors.white: Colors.black,
//           ),
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             SizedBox(
//               height: 37.h,
//             ),
//             Align(
//               alignment: Alignment.centerLeft,
//               child: Padding(
//                 padding: EdgeInsets.only(left: 38.sp),
//                 child: TextWithFont().textWithRobotoFont(
//                     text: 'Check your email address',
//                     fontSize: 18.sp,
//                     fontWeight: FontWeight.bold,
//                     color: titleForgotPasswordScreen,
//                     textAlign: TextAlign.center),
//               ),
//             ),
//             SizedBox(
//               height: 30.h,
//             ),
//             Align(
//               alignment: Alignment.centerLeft,
//               child: Padding(
//                 padding: EdgeInsets.only(left: 38.sp),
//                 child: TextWithFont().textWithRobotoFont(
//                     text: 'Enter the code',
//                     fontSize: 18.sp,
//                     fontWeight: FontWeight.bold,
//                     color: Get.isDarkMode ?Colors.blueAccent :authLoginWithTextColor,),
//               ),
//             ),
//             SizedBox(
//               height: 37.h,
//             ),
            // Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 70.w, vertical: 30.h),
            //   child: GetBuilder<AuthController>(builder: (_) {
            //     return Form(
            //         key: formKey,
            //         child: PinCodeTextField(
            //           pinTheme: PinTheme(
            //             shape: PinCodeFieldShape.box,
            //             fieldHeight: 50.h,
            //             fieldWidth: 40.w,
            //             selectedColor: Colors.orange.withOpacity(.5),
            //             activeColor: Colors.orange,
            //             inactiveColor: pinCodeTextFieldColor.withOpacity(.7),
            //           ),
            //           onChanged: (value) =>
            //               controller.currentTextPinCode(value),
            //           validator: (v) => controller.validaterPinCode(v!),
            //           length: 4,
            //           obscureText: false,
            //           animationType: AnimationType.fade,
            //           animationDuration: const Duration(milliseconds: 300),
            //           appContext: context,
            //         ));
            //   }),
            // ),
//             SizedBox(
//               height: 194.h,
//             ),
//             AuthButton(
//               text: 'Reset Password',
//               onPressed: () {
//                 // formKey.currentState?.validate();
//                 // print(controller.currentTextPin);
//                 Get.toNamed(Routes.forgotPasswordUpdateScreen);
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
