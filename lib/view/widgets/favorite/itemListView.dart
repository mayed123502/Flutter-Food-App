import 'package:ecommerce_app/view/widgets/favorite/leadingListTile.dart';
import 'package:ecommerce_app/view/widgets/favorite/trailingListTile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../logic/controllers/favorites_conntroller.dart';
import '../../../model/homeProdect/homeProdectData.dart';
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
          ),
          subtitle: Row(
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: context.theme.buttonColor,
                  minimumSize: Size(120.w, 30.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // <-- Radius
                  ),
                ),
                child: Text(
                  'Order',
                  style: TextStyle(fontSize: 14),
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
                  primary: Colors.white,
                  minimumSize: Size(120.w, 30.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // <-- Radius
                  ),
                ),
                child: Text(
                  'Delete',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
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
