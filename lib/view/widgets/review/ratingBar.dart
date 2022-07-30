import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../utils/theme.dart';
import '../textWithFont.dart';

class RatingBarReview extends StatefulWidget {
  const RatingBarReview({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _RatingBarReview createState() => _RatingBarReview();
}

class _RatingBarReview extends State<RatingBarReview> {
  late double _rating;

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
          _rating = rating;
        });
      },
      updateOnDrag: true,
    );
  }
}
