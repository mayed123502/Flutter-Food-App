import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_app/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../model/homeProdect/homeProdectData.dart';
import '../../../utils/theme.dart';

class FoodsView extends StatelessWidget {
  const FoodsView({
    required this.homeProdectData,
  });
  final HomeProdectData homeProdectData;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 15, top: 5, bottom: 20),
        width: 160,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).textTheme.headline4!.color,
            boxShadow: const [
              BoxShadow(
                offset: Offset(0, 2),
                blurRadius: 2,
                color: Color.fromARGB(76, 0, 0, 0),
              )
            ]),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Expanded(
            child: 
            Container(
                margin: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Colors.grey.shade300,
                  image: DecorationImage(
                    image: CachedNetworkImageProvider(
                      homeProdectData.image!,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                // ),
              ),
            ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(homeProdectData.name!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        color: Theme.of(context).textTheme.headline1!.color,
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                      ),
                    )),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '\$${homeProdectData.price}',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RatingBarIndicator(
                          rating: homeProdectData.rating!.toDouble(),
                          itemCount: 1,
                          itemSize: 25.0,
                          physics: BouncingScrollPhysics(),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: mainColor,
                          ),
                        ),
                        Text(
                          '${homeProdectData.rating}',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.grey.shade500,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 3,
                ),
              ],
            ),
          ),
        ]));
  }
}
