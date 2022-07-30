import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ResturantCard extends StatelessWidget {
  const ResturantCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      width: 110,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        image: DecorationImage(
          colorFilter:
              ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.darken),
          image: AssetImage(
            "assets/resturantpage.png",
          ),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.only(right: 5.w, bottom: 0, left: 10.w, top: 55.h),
        child: Text(
          'Burger King',
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
    );
  }
}
