import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../widgets/settings/offer/appBarOffer.dart';

class OfferScreen extends StatelessWidget {
  const OfferScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarOffer(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          itemCount: 11,
          itemBuilder: (context, index) {
            return ListTile(
              leading: ClipOval(
                child: SizedBox.fromSize(
                  size: Size.fromRadius(48), // Image radius
                  child: Image.asset('assets/hamburger.jpg', fit: BoxFit.cover),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
