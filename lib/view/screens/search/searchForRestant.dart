import 'package:ecommerce_app/view/widgets/search/listTileCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/theme.dart';
import '../../widgets/search/filterContainer.dart';
import '../../widgets/search/searchTextField.dart';
import '../../widgets/search/showNotFound.dart';
import '../../widgets/textWithFont.dart';

class SearchForRestrant extends StatelessWidget {
  const SearchForRestrant({
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
                      subtitleWidget: TextWithFont().textWithRalewayFont(
                          color: Colors.black.withOpacity(.5),
                          fontSize: 16.sp,
                          text: 'Al-Jalal Street',
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                )
              : ShowNotFound(),
        ],
      ),
    );
  }
}
