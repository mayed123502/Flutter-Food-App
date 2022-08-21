import 'package:ecommerce_app/view/widgets/favorite/leadingListTile.dart';
import 'package:ecommerce_app/view/widgets/favorite/trailingListTile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../logic/controllers/favorites_conntroller.dart';
import '../../../model/homeProdect/homeProdectData.dart';
import '../../../routes/routes.dart';
import '../../../utils/theme.dart';

class ItemListView extends GetView<FavoritesController> {
  const ItemListView({
    Key? key,
    required this.homeProdectData,
  }) : super(key: key);
  final HomeProdectData homeProdectData;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 10.w,
      ),
      child: Card(
        elevation: 5,
        shadowColor: Colors.grey.withOpacity(.3),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // <-- Radius
        ),
        child: ListTile(
          // trailing: TrailingListTile(),
          title: LeadingListTile(
            name: homeProdectData.name!,
            image: homeProdectData.image!,
          ),
          subtitle: Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(
                    Routes.productDetailsScreen,
                    arguments: [
                      {'prodectData': homeProdectData}
                    ],
                  );
                },
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  minimumSize: Size(120.w, 30.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // <-- Radius
                  ),
                ),
                child: Text(
                  'Order'.tr,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(width: 70.w),
              ElevatedButton(
                onPressed: () {
                  controller.mangeFavourites(homeProdectData);
                },
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  side: BorderSide(
                    width: 2.0,
                    color: mainColor,
                  ),
                  primary: Get.isDarkMode ? Color(0xFF18172B) : Colors.white,
                  minimumSize: Size(120.w, 30.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // <-- Radius
                  ),
                ),
                child: Text(
                  'Delete'.tr,
                  style: TextStyle(
                      fontSize: 14,
                      color: Theme.of(context).textTheme.headline1!.color,
                      fontWeight: FontWeight.w300),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
