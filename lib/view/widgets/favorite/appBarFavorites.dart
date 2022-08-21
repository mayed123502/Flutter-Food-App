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
        'Favorites'.tr,
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: Theme.of(context).textTheme.headline1!.color,),
      ),
      centerTitle: true,
     
    );
  }
}

