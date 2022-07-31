import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../utils/theme.dart';

class RatingBarRev extends StatelessWidget {
  const RatingBarRev({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: 5,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemSize: 20.0,
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: mainColor,
      ),
      onRatingUpdate: (rating) {},
    );
  }
}