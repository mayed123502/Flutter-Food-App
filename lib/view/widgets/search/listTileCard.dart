import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../model/search/search_Model.dart';
import '../../../utils/theme.dart';
import '../textWithFont.dart';

class ListTileCard extends StatelessWidget {
  const ListTileCard({
    Key? key,
    required this.subtitleWidget,
    required this.dataRestaurant,
    required this.dataProducts,
    required this.isProduct,
  }) : super(key: key);
  final Widget subtitleWidget;
  final DataRestaurant dataRestaurant;
  final DataProducts dataProducts;
  final bool isProduct;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          isProduct ? '${dataProducts.name}' : '${dataRestaurant.name}',
          style: TextStyle(
              //                    fontSize: 15,
              fontWeight: FontWeight.w900,
              color: Theme.of(context).textTheme.headline1!.color),
        ),
        leading: CircleAvatar(
          radius: 25.0,
          backgroundImage: NetworkImage(
            isProduct ? '${dataProducts.image}' : '${dataRestaurant.logo}',
          ),
        ),
        trailing: SizedBox(
          width: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.star,
                color: mainColor,
                size: 20,
              ),
              Text(
                isProduct
                    ? '${dataProducts.rating}'
                    : '${dataRestaurant.rating}',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Theme.of(context)
                      .textTheme
                      .headline1!
                      .color!
                      .withOpacity(.5),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
        ),
        subtitle: subtitleWidget,
      ),
    );
  }
}
