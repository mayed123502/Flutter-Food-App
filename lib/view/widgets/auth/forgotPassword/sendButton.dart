import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../routes/routes.dart';

class SendButton extends StatelessWidget {
  const SendButton({
    Key? key,
    this.icon,
    this.press,
  }) : super(key: key);
  final String? icon;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shadowColor: Colors.white,
          side: BorderSide.none,
          primary: context.theme.buttonColor,
          minimumSize: Size(337.w, 40),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30), // <-- Radius
          ),
        ),
        onPressed: press as void Function()?,
        child: Text(icon!),
      ),
    );
  }
}

 
        //                   emailController.text.isEmpty
          // ? controller.validaterFalse()
          // : controller.validaterTrue();
          // Get.toNamed(Routes.sendOTPScreen);
    
    