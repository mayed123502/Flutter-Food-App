import 'package:ecommerce_app/utils/theme.dart';
import 'package:ecommerce_app/view/widgets/cart/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListTileCard extends StatelessWidget {
  const ListTileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Card(
        elevation: 2,
        child: ListTile(
          // tileColor: Color.fromRGBO(252, 252, 252, 1),
          title: Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                // ClipRRect(
                //   borderRadius: BorderRadius.circular(8.0),
                //   child: Image.asset('assets/gridview.png',
                //       height: 70.0.h, width: 70.w),
                // ),
                SizedBox(
                  width: 8.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pizza',
                      style: TextStyle(
                          fontSize: 18.sp, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 8.h,
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
                              color: Theme.of(context).textTheme.headline1!.color!.withOpacity(.6)
                            )),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          trailing: Container(
            width: 100.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height: 6.h,
                ),
                Text(
                  '75\$',
                  style: TextStyle(color: mainColor),
                ),
                SizedBox(
                  height: 16.h,
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
