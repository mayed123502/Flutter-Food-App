import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LeadingListTile extends StatelessWidget {
  const LeadingListTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset('assets/gridview.png',
                    height: 90.0.h, width: 90.w),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.w),
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Burger',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text('Burger King',
                        style: TextStyle(
                          fontSize: 12,
                        )),
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
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.w),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                elevation: 0.0,
                primary: context.theme.buttonColor,
                minimumSize: Size(120.w, 30.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      8), // <-- Radius
                ),
              ),
              child: Text(
                'Order',
                style: TextStyle(fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
