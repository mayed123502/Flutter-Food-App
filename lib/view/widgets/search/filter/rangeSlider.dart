import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/theme.dart';
import '../../textWithFont.dart';

class RangeSliderFiltter extends StatefulWidget {
  const RangeSliderFiltter({Key? key}) : super(key: key);

  @override
  State<RangeSliderFiltter> createState() => _RangeSliderFiltterState();
}

class _RangeSliderFiltterState extends State<RangeSliderFiltter> {
  var selectedRange = RangeValues(0, 100.00);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextWithFont().textWithRalewayFont(
                color: filterTitlesColor,
                fontSize: 20.sp,
                text: 'Price Range',
                fontWeight: FontWeight.bold),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '\$ ${selectedRange.start.toStringAsFixed(2)}',
                  style: TextStyle(color: Colors.grey.shade500, fontSize: 12),
                ),
                Text(" - ", style: TextStyle(color: Colors.grey.shade500)),
                Text(
                  '\$ ${selectedRange.end.toStringAsFixed(2)}',
                  style: TextStyle(color: Colors.grey.shade500, fontSize: 12),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 30.h,
        ),
        RangeSlider(
            values: selectedRange,
            min: 0.00,
            max: 100.00,
            divisions: 10,
            inactiveColor: Colors.grey.shade300,
            activeColor:mainColor,
            labels: RangeLabels(
              '\$ ${selectedRange.start.toStringAsFixed(2)}',
              '\$ ${selectedRange.end.toStringAsFixed(2)}',
            ),
            onChanged: (RangeValues values) {
              setState(() => selectedRange = values);
            }),
      ],
    );
  }
}
