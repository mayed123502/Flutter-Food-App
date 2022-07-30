import 'package:ecommerce_app/view/widgets/favorite/leadingListTile.dart';
import 'package:ecommerce_app/view/widgets/favorite/trailingListTile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemListView extends StatelessWidget {
  const ItemListView({
    Key? key,
  }) : super(key: key);

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
          title: Row(
            children: [
              LeadingListTile(),
              SizedBox(
                width: 20.w,
              ),
              TrailingListTile(),
            ],
          ),
        ),
      ),
    );
  }
}



