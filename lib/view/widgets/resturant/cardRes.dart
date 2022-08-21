import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_app/model/restauntAll/dataOfRestaurant.dart';
import 'package:ecommerce_app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../model/homeProdect/homeProdectData.dart';
import '../../../model/restaurantsDetails_model.dart';
import '../textWithFont.dart';

class CardRes extends StatelessWidget {
  const CardRes({
    Key? key,
    required this.restaurantMeal,
  }) : super(key: key);
  final HomeProdectData restaurantMeal;
  @override
  Widget build(BuildContext context) {
    return Card(
            color: Theme.of(context).cardColor,

      elevation: 5,
      shadowColor: Colors.grey.withOpacity(.3),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        leading: ClipOval(
          child: SizedBox.fromSize(
            size: Size.fromRadius(30), // Image radius
            child: CachedNetworkImage(
              imageUrl: restaurantMeal.image!,
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          child: Text(
            restaurantMeal.name!,
            style: GoogleFonts.nunitoSans(
              textStyle: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                color: Get.isDarkMode ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        subtitle: Row(
          children: [
            Image.asset('assets/fire.png'),
            SizedBox(
              width: 5.w,
            ),
            Text('${restaurantMeal.calories}Cal',
                style: TextStyle(
                  fontSize: 12,
                  color: Theme.of(context).textTheme.headline1!.color
                )),
            SizedBox(
              width: 40.w,
            ),
            RatingBarIndicator(
              rating: restaurantMeal.rating!.toDouble(),
              itemCount: 1,
              itemSize: 20.0,
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: mainColor,
              ),
            ),
            Text(
              '${restaurantMeal.rating}',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.grey.shade500,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              width: 40.w,
            ),
            TextWithFont().textWithRalewayFont(
                color: mainColor,
                fontSize: 16.sp,
                text: '${restaurantMeal.rating}\$',
                fontWeight: FontWeight.w500),
          ],
        ),
      ),
    );
  }
}
