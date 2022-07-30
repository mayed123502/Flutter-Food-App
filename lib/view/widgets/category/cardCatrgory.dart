import 'package:ecommerce_app/view/widgets/textWithFont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CardCatrgory extends StatelessWidget {
  const CardCatrgory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor:Colors.grey,
      surfaceTintColor:Colors.grey,
      elevation:1,
      child: Row(
        children: [
          SizedBox(
            width: 15.w,
          ),
          Column(
            children: [
              TextWithFont().textWithRalewayFont(
                  color: Get.isDarkMode
                      ? Colors.white
                      : Colors.black,
                  fontSize: 20.sp,
                  text: 'Burger King',
                  fontWeight: FontWeight.bold),
              SizedBox(
                height: 10.h,
              ),
              RatingBar.builder(
                initialRating: 5,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemSize: 20.0,
                itemPadding:
                    const EdgeInsets.symmetric(horizontal: 0),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {},
              ),
            ],
          ),
          SizedBox(
            width: 50.w,
          ),

          Padding(
            padding:  EdgeInsets.symmetric(vertical: 10.h,horizontal: 10.w),
            child: Container(
              height: 100.h,
              width: 130.w,
              margin: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: Colors.grey.shade300,
                image: DecorationImage(
                  image: ExactAssetImage(
                    'assets/pizza2.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              // ),
            ),
          ),
          // ClipOval(
          //   child: SizedBox.fromSize(
          //     size: Size.fromRadius(48), // Image radius
          //     child:

          //      Image.asset(
          //       'assets/hamburger.jpg',
          //       fit: BoxFit.cover,
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}

