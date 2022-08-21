import 'package:ecommerce_app/view/screens/search/searchForMeal.dart';
import 'package:ecommerce_app/view/screens/search/searchForRestant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../logic/controllers/search_controller.dart';
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
  final searchController = Get.find<SearchController>();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: SearchAppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 60.h,
                margin: EdgeInsets.symmetric(horizontal: 15.w),
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
              Container(
                // color: Colors.amber,
                width: double.infinity,
                height: 30.h,
                margin: EdgeInsets.symmetric(
                  vertical: 20.h,
                ),
                child: TabBar(
                  labelColor: mainColor,
                  indicatorColor: mainColor,
                  unselectedLabelColor: Colors.grey,
                  tabs: const [
                    Tab(
                      text: 'Meals',
                    ),
                    Tab(
                      text: 'Restaurants',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Get.height * .73,
                child: TabBarView(
                  children: [
                    SearchForMeal(),
                    SearchForRestrant(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// ItemCard(),