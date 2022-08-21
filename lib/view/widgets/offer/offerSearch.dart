import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/theme.dart';

class OfferSearch extends StatelessWidget {
  const OfferSearch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      enabled: false,
      onChanged: ((value) {}),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
        prefixIcon: Icon(Icons.search),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
        hintText: 'Search',
        filled: true,
        // fillColor: Color.fromRGBO(244, 244, 244, 1),
        hintStyle: TextStyle(
          // color: authTextFromFieldHintTextColor,
          fontSize: 17.sp,
          fontWeight: FontWeight.w500,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: authTextFromFieldFillColor),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: authTextFromFieldFillColor),
          borderRadius: BorderRadius.circular(8),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: authTextFromFieldFillColor),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
