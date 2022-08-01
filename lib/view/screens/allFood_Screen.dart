import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../widgets/AllFood/appBarMeal.dart';
import '../widgets/AllFood/mealCard.dart';
import '../widgets/textWithFont.dart';

class AllFoodScreen extends StatelessWidget {
  const AllFoodScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarMeal(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: 10,
            itemBuilder: (context, index) {
              return MealCard();
            }),
      ),
    );
  }
}
