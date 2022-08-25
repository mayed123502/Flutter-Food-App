import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../model/homeProdect/homeProdectData.dart';
import '../textWithFont.dart';

class MealCard extends StatelessWidget {
  MealCard(this.homeProdectData);
  final HomeProdectData homeProdectData;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: 160,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).textTheme.headline4!.color,
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 2),
              blurRadius: 5,
              color: Color.fromARGB(76, 0, 0, 0),
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Colors.grey.shade300,
                  image: DecorationImage(
                      image: NetworkImage(
                        homeProdectData.image ?? '',
                      ),
                      fit: BoxFit.cover)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWithFont().textWithRalewayFont(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  text: '${homeProdectData.name}',
                  color: Theme.of(context).textTheme.headline1!.color!,
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextWithFont().textWithRalewayFont(
                        color: Theme.of(context)
                            .textTheme
                            .headline1!
                            .color!
                            .withOpacity(.5),
                        fontSize: 16.sp,
                        text: homeProdectData.description!.length <= 15
                            ? '${homeProdectData.description} '
                            : '${homeProdectData.description} '.substring(15),
                        fontWeight: FontWeight.w500)
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
