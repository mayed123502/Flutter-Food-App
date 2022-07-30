import 'package:ecommerce_app/view/widgets/auth/login/socal_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/constant/imageasset.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: 20.w, vertical: 13.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SocalCard(
            icon: ImageAsset.facebook,
            press: () {},
          ),
          SocalCard(
            icon: ImageAsset.google,
            press: () {},
          ),
        ],
      ),
    );
  }
}
