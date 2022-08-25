import 'package:ecommerce_app/view/widgets/textWithFont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../utils/sharPreferenceUtils .dart';

class Addres extends StatelessWidget {
  const Addres({
    Key? key, required this.addres,
  }) : super(key: key);
final String addres;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.4,
      child: TextWithFont().textWithRalewayFont(
          color:                                   Theme.of(context).textTheme.headline1!.color!.withOpacity(.8),

          fontSize: 16.sp,
          text:addres,
          fontWeight: FontWeight.bold),
    );
  }
}
