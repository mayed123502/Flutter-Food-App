import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppBarFavorites extends StatelessWidget with PreferredSizeWidget{
  const  AppBarFavorites({
    Key? key,
  }) : super(key: key);
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text(
        'Favorites',
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
      ),
      centerTitle: true,
      // leading: IconButton(
      //   onPressed: () => Get.back(),
      //   icon: Icon(
      //     Icons.arrow_back_ios,
      //     color: Get.isDarkMode ? Colors.white : Colors.black,
      //   ),
      // ),
    );
  }
}

