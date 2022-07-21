import 'package:flutter/material.dart';

import 'package:get/get.dart';  
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../routes/routes.dart';
import '../../utils/constant/imageasset.dart';
import '../widgets/auth/auth_button.dart';
import '../widgets/textWithFont.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,

          // ignore: sized_box_for_whitespace
          body: Container(
            width: double.infinity,
            height: double.infinity,
            child: Column(children: [
              SizedBox(
                height: 178.h,
                width: double.infinity,
              ),
              Image.asset(
                ImageAsset.splash,
                width: 134.w,
                height: 134.h,
              ),
              SizedBox(
                height: 27.h,
                width: double.infinity,
              ),
              TextWithFont().textWithRalewayFont(
                  color: Colors.black,
                  fontSize: 35.sp,
                  text: "Foodi",
                  fontWeight: FontWeight.bold),
              SizedBox(
                height: 30.h,
                width: double.infinity,
              ),
              Text(
                'Beautiful eCommerce app for \n resturant',
                style: GoogleFonts.nunitoSans(
                  textStyle:
                      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w300),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 77.h,
                width: double.infinity,
              ),
              AuthButton(
                onPressed: () {
                  Get.toNamed(Routes.onBoardingScreen);
                  // Get.toNamed(Routes.homeScreen);
                },
                text: 'Let\'s get Started',
              ),
              SizedBox(
                height: 49.h,
                width: double.infinity,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'I already have an account. ',
                    style: GoogleFonts.nunitoSans(
                      textStyle: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.toNamed(Routes.loginScreen);
                    },
                    child: Text(
                      'Log in',
                      style: GoogleFonts.nunitoSans(
                        textStyle: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ]),
          )),
    );
  }
}
