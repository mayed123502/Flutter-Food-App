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
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'Order',
            style: TextStyle(color: Colors.black),
          ),
          elevation: 1,
          centerTitle: true,
          leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(
              Icons.arrow_back_ios,
              color: Get.isDarkMode ? Colors.white : Colors.black,
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
                  color: Colors.black,
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
