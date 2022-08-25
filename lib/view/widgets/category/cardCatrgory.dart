import 'package:ecommerce_app/model/restauntAll/dataOfRestaurant.dart';
import 'package:ecommerce_app/model/restaurants/restaurantsData_modle.dart';
import 'package:ecommerce_app/view/widgets/textWithFont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CardCatrgory extends StatelessWidget {
  const CardCatrgory(
    this.dataRestaurants,
  );

  final DataOfRestaurant dataRestaurants;
  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.grey,
      surfaceTintColor: Colors.grey,
      elevation: 1,
      child: Row(
        children: [
          SizedBox(
            width: 15.w,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
            child: Container(
              height: 100.h,
              width: 130.w,
              margin: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: Colors.grey.shade300,
                image: DecorationImage(
                  image: NetworkImage(
                    '${dataRestaurants.logo}',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              // ),
            ),
          ),
          SizedBox(
            width: 30.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 100,
                height: 20,
                child: TextWithFont().textWithRalewayFont(
                    color: Get.isDarkMode ? Colors.white : Colors.black,
                    fontSize: 20.sp,
                    text: dataRestaurants.name!,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10.h,
              ),
              RatingBar.builder(
                initialRating: dataRestaurants.rating!.toDouble(),
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemSize: 20.0,
                itemPadding: const EdgeInsets.symmetric(horizontal: 0),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
