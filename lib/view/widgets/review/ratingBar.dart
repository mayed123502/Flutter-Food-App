import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../logic/controllers/reviewProduct_controllers.dart';
import '../../../utils/theme.dart';
import '../textWithFont.dart';

class RatingBarReview extends StatefulWidget {
  const RatingBarReview({Key? key}) : super(key: key);

  @override
  _RatingBarReview createState() => _RatingBarReview();
}

class _RatingBarReview extends State<RatingBarReview> {
  final reviewController = Get.find<RreviewProductController>();

  double _initialRating = 4.0;
  bool _isVertical = false;
  IconData? _selectedIcon;

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      glowColor: Colors.grey.shade500,
      initialRating: _initialRating,
      minRating: 1,
      direction: _isVertical ? Axis.vertical : Axis.horizontal,
      allowHalfRating: true,
      unratedColor: Colors.amber.withAlpha(50),
      itemCount: 5,
      itemSize: 40.0,
      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
      itemBuilder: (context, _) => Icon(
        _selectedIcon ?? Icons.star,
        color: Color.fromRGBO(245, 201, 99, 1),
      ),
      onRatingUpdate: (rating) {
        setState(() {
          reviewController.rateing = rating ;
          print(  reviewController.rateing);
        });
      },
      updateOnDrag: true,
    );
  }
}
