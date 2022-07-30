import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/theme.dart';
import '../../widgets/search/filterContainer.dart';
import '../../widgets/search/itemCard.dart';
import '../../widgets/search/listTileCard.dart';
import '../../widgets/search/searchAppBar.dart';
import '../../widgets/search/searchTextField.dart';
import '../../widgets/search/showNotFound.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({Key? key}) : super(key: key);
  bool embty = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: SearchAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10.h,
            ),
            Container(
              width: double.infinity,
              height: 60.h,
              child: Row(
                children: [
                  Expanded(
                    child: SearchTextField(),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  FilterContainer(),
                ],
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            embty
                ? Expanded(
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: 15,
                      itemBuilder: (BuildContext context, int index) =>
                          ListTileCard(), 
                    ),
                  )
                : ShowNotFound(),
          ],
        ),
      ),
    );
  }
}


// ItemCard(),