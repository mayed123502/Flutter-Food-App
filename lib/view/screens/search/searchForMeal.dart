import 'package:ecommerce_app/view/widgets/search/listTileCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/search/filterContainer.dart';
import '../../widgets/search/searchTextField.dart';
import '../../widgets/search/showNotFound.dart';

class SearchForMeal extends StatelessWidget {
  const SearchForMeal({
    Key? key,
    required this.embty,
  }) : super(key: key);

  final bool embty;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30.h,
          ),
          embty
              ? Expanded(
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: 15,
                    itemBuilder: (BuildContext context, int index) =>
                        ListTileCard(
                      subtitleWidget: Row(
                        children: [
                          Image.asset('assets/fire.png'),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            '500Cal',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              : ShowNotFound(),
        ],
      ),
    );
  }
}
