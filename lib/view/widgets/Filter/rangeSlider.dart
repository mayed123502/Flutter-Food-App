import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class RangeSliderWidget extends StatefulWidget {
  const RangeSliderWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<RangeSliderWidget> createState() => _RangeSliderWidget();
}

class _RangeSliderWidget extends State<RangeSliderWidget> {
  double _startValue = 1.0;
  double _endValue = 1000.0;
  @override
  Widget build(BuildContext context) {
    return RangeSlider(
      min: 0.0,
      max: 1000.0,
      divisions: 10,
      labels: RangeLabels(
        _startValue.round().toString(),
        _endValue.round().toString(),
      ),
      values: RangeValues(_startValue, _endValue),
      onChanged: (values) {
        setState(() {
          _startValue = values.start;
          _endValue = values.end;
        });
      },
    );
  }
}
