import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppBarOffer extends StatelessWidget with PreferredSizeWidget{
  const AppBarOffer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text(
        'Offers',
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
      ),
      centerTitle: true,
    
     leading: IconButton(
      onPressed: () => Get.back(),
      icon: Icon(
        Icons.arrow_back_ios,
        color: Get.isDarkMode ? Colors.white : Colors.black,
        size: 20,
      ),
    ),);
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}
