import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../model/homeRestaurant/homeRestaurantData.dart';

class ResturantCard extends StatelessWidget {
  const ResturantCard({
    Key? key,
    required this.homeRestaurantsData,
  }) : super(key: key);
  final HomeRestaurantsData homeRestaurantsData;
  @override
  Widget build(BuildContext context) {
    
    return CachedNetworkImage(
        imageUrl: homeRestaurantsData.logo!,
        imageBuilder: (context, imageProvider) => Container(
              margin: EdgeInsets.all(5),
              width: 110,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.3), BlendMode.darken),
                  image: CachedNetworkImageProvider(
                    homeRestaurantsData.logo!,
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    right: 5.w, bottom: 0, left: 10.w, top: 55.h),
                child: Text(
                  homeRestaurantsData.name!,
                  maxLines: 1,
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      color: Colors.white.withOpacity(1),
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
            ));
  }
}
