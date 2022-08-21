import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../routes/routes.dart';
import '../../utils/constant/imageasset.dart';
import '../../utils/theme.dart';
import '../widgets/auth/auth_button.dart';
import '../widgets/splash/buttomRow.dart';
import '../widgets/splash/logoContainer.dart';
import '../widgets/textWithFont.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: 178.h,
                width: double.infinity,
              ),
              LogoContainer(),
              SizedBox(
                height: 27.h,
                width: double.infinity,
              ),
              TextWithFont().textWithRalewayFont(
                  color:Theme.of(context).textTheme.headline1!.color!,
                  fontSize: 35.sp,
                  text: "Foodi",
                  fontWeight: FontWeight.bold),
              SizedBox(
                height: 30.h,
                width: double.infinity,
              ),
              Text(
                'Beautiful eCommerce app for \n resturant'.tr,
                style: GoogleFonts.nunitoSans(
                  textStyle:
                      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w300,color: Theme.of(context).textTheme.headline1!.color!,),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 77.h,
                width: double.infinity,
              ),
              AuthButton(
                press: () {
                  Get.toNamed(Routes.onBoardingScreen);
                },
                text: 'Let\'s get Started'.tr,
              ),
              SizedBox(
                height: 49.h,
                width: double.infinity,
              ),
              ButtomRow(),
            ],
          ),
        ),
      ),
    );
  }
}
