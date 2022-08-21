import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../utils/theme.dart';

class RatingBarRev extends StatelessWidget {
  const RatingBarRev({
    Key? key,
    required this.rating,
  }) : super(key: key);
  final double rating;
  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating:rating,
      itemCount: 5,
      itemSize: 20.0,
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: mainColor,
      ),
    );
  }
}
