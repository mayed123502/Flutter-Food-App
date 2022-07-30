import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class MostPopularCard extends StatelessWidget {
   MostPopularCard({
     required this.name, required this.image,
  }) ;
  final String name;
  final Image image;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            width: 200,
            height: 150,
            child: image,
          ),
        ),
        SizedBox(height: 10),
        Text(
          name,
          style:TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold),
        ),
        Row(
          children: [
            Text("Cafe"),
            SizedBox(
              width: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: Text(
                ".",
                style: TextStyle(
                  // color: AppColor.orange,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Text("Western Food"),
            SizedBox(
              width: 20,
            ),
            // Image.asset(
            //   Helper.getAssetName("star_filled.png", "virtual"),
            // ),
            SizedBox(
              width: 5,
            ),
            Text(
              "4.9",
              style: TextStyle(
                // color: AppColor.orange,
              ),
            )
          ],
        )
      ],
    );
  }
}