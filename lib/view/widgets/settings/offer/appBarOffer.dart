import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppBarOffer extends StatelessWidget with PreferredSizeWidget {
  const AppBarOffer({
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
        'Offers',
        style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).textTheme.headline1!.color),
      ),
      centerTitle: true,
      leading: IconButton(
        onPressed: () => Get.back(),
        icon: Icon(
          Icons.arrow_back_ios,
          size: 20,
        ),
      ),
    );
  }
}
