// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../logic/controllers/favorites_conntroller.dart';
import '../../utils/sharPreferenceUtils .dart';
import '../widgets/favorite/appBarFavorites.dart';
import '../widgets/favorite/itemListView.dart';

class FavoritesScreen extends GetView<FavoritesController> {
  const FavoritesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarFavorites(),
        body: SharedPrefs.instance.getString('token') == null
            ? Center(
                child: Text(
                  "You must open an account".tr,
                  style: TextStyle(
                    fontSize: 20,
                    color:Theme.of(context).textTheme.headline1!.color!.withOpacity(.5),
                  ),
                ),
              )
            : Obx(
                () => controller.favouritesList.isNotEmpty
                    ? Padding(
                        padding: EdgeInsets.only(bottom: 10.h),
                        child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          itemCount: controller.favouritesList.length,
                          itemBuilder: (BuildContext context, int index) {
                            return ItemListView(
                              homeProdectData: controller.favouritesList[index],
                            );
                          },
                        ),
                      )
                    : Center(
                        child: Text(
                        "No Favorite Foods".tr,
                        style: TextStyle(
                            fontSize: 20, color: Theme.of(context).textTheme.headline1!.color!.withOpacity(.5),),
                      )),
              ));
  }
}
