import 'package:ecommerce_app/utils/theme.dart';
import 'package:ecommerce_app/view/screens/settings/tabBarScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../routes/routes.dart';

class MyOrdersScreen extends StatelessWidget {
  MyOrdersScreen({Key? key}) : super(key: key);
  late TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor:Get.isDarkMode? Theme.of(context).scaffoldBackgroundColor:Colors.white,
          title:  Text(
            'Order',
            style: TextStyle(color: Theme.of(context).textTheme.headline1!.color),
          ),
          elevation: 1,
          centerTitle: true,
          leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(
              Icons.arrow_back_ios,
              size: 20,
            ),
          ),
          actions: [
            GestureDetector(
              onTap: (() {
                Get.toNamed(Routes.notificatonScreen);
              }),
              child: Padding(
                padding: EdgeInsets.only(right: 25.w, left: 0),
                child: const Icon(
                  Icons.notifications_none_rounded,
                  size: 30,
                ),
              ),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(70),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: TabBar(
                labelColor: mainColor,
                indicatorColor: mainColor,
                unselectedLabelColor: Colors.grey,
                tabs: const [
                  Tab(
                    text: 'In Progress',
                  ),
                  Tab(
                    text: 'Finished',
                  ),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            TapBarScreen(),
            TapBarScreen(),
          ],
        ),
      ),
    );
  }
}
