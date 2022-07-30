import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRow extends StatelessWidget {
  final String name;
  final String price;
  FontWeight fontWeight;
  Color priceColor;
  CustomRow(
    this.fontWeight,
    this.priceColor, {
    super.key,
    required this.name,
    required this.price,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: TextStyle(fontSize: 18, fontWeight: fontWeight),
          ),
          Text(
            price,
            style: TextStyle(
                fontSize: 18, color: priceColor, fontWeight: fontWeight),
          ),
        ],
      ),
    );
  }
}
