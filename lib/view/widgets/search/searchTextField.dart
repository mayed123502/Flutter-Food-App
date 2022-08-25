import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../logic/controllers/search_controller.dart';
import '../../../utils/theme.dart';

class SearchTextField extends StatelessWidget {
  SearchTextField({
    Key? key,
  }) : super(key: key);
  final searchController = Get.find<SearchController>();

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: ((value) {
        searchController.textFormFild.value=value;
        if (value == '') {
          searchController.searchProductsList.clear();
          searchController.searchProductsList.clear();
        } else {
          searchController.viewSearchProducts(value);
          searchController.viewSearchRestaurants(value);
        }
      }),
          cursorColor: Theme.of(context).textTheme.headline1!.color,
   style: TextStyle(
        color: Theme.of(context).textTheme.headline1!.color,
      ),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
        prefixIcon: Icon(Icons.search),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
        hintText: 'Search',
        filled: true,
        
        // fillColor: Color.fromRGBO(244, 244, 244, 1),
        hintStyle: TextStyle(
          color: authTextFromFieldHintTextColor,
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
