// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../widgets/favorite/appBarFavorites.dart';
import '../widgets/favorite/itemListView.dart';
import '../widgets/favorite/leadingListTile.dart';
import '../widgets/favorite/trailingListTile.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarFavorites(),
        body: Padding(
          padding: EdgeInsets.only(top: 40.h, bottom: 10.h),
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return ItemListView();
            },
          ),
        ));
  }
}

