import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../utils/theme.dart';

class LeadingListTile extends StatelessWidget {
  const LeadingListTile({
    Key? key,
    required this.name,
    required this.image,
  }) : super(key: key);
  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                  radius: 35,
                  child: ClipOval(
                    // borderRadius: BorderRadius.circular(8.0),
                    child: CachedNetworkImage(
                      placeholder: (context, url) =>
                          CircularProgressIndicator(),
                      errorWidget: (context, url, error) => Icon(
                        Icons.photo_rounded,
                        color: Colors.grey.shade700,
                        size: 100,
                      ),
                      height: 90.0.h,
                      width: 90.w,
                      fit: BoxFit.cover,
                      imageUrl: image,
                    ),
                  )),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 150,
                          child: Text(
                            maxLines: 1,
                            softWrap: false,
                            overflow: TextOverflow.ellipsis,
                            name,
                            style: TextStyle(
                              fontSize: 20,
                              color:
                                  Theme.of(context).textTheme.headline1!.color,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30.w,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Icon(
                            Icons.favorite,
                            color: mainColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 150,
                          child: Text(
                            'Burger King',
                            style: TextStyle(
                              fontSize: 12,
                              color:
                                  Theme.of(context).textTheme.headline1!.color,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30.w,
                        ),
                        Text(
                          '80\$',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: mainColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      children: [
                        Image.asset('assets/fire.png'),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text('500Cal',
                            style: TextStyle(
                              fontSize: 12,
                              color:
                                  Theme.of(context).textTheme.headline1!.color,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
