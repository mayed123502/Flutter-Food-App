import 'package:ecommerce_app/view/widgets/cart/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/theme.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({
    Key? key,
    required List<String> values, required this.index,
  }) : _values = values, super(key: key);

  final List<String> _values;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Dismissible(
        key: Key('item ${_values[index]}'),
        background: Container(
          color: Colors.blue,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: const [
                Icon(Icons.favorite, color: Colors.white),
                Text('Move to favorites',
                    style: TextStyle(color: Colors.white)),
              ],
              
            ),
          ),
        ),
        secondaryBackground: Container(
          decoration: BoxDecoration(
            color: mainColor,
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(10),
              topRight: Radius.circular(10),
              topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10),
            ),
          ),
          child: const Align(
            // ignore: sort_child_properties_last
            child: Padding(
              padding: EdgeInsets.only(right: 16),
              child: Icon(Icons.delete),
            ),
            alignment: Alignment.centerRight,
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Card(
            elevation: 5,
            shadowColor: Colors.grey.withOpacity(.3),
            child: ListTile(
              tileColor: Color.fromRGBO(252, 252, 252, 1),
              title: Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset('assets/gridview.png',
                          height: 70.0.h, width: 70.w),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Pizza',
                          style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          '100\$',
                          style: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w400,
                              color: mainColor),
                        )
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
                    Icon(
                      Icons.favorite_border,
                      color: mainColor,
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Counter(
                          text: '-',
                          fun: () {},
                        ),
                        SizedBox(
                          width: 4.w,
                        ),
                        Text('2'),
                        SizedBox(
                          width: 4.w,
                        ),
                        Counter(
                          text: '+',
                          fun: () {},
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

