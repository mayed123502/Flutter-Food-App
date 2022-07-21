import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../logic/controllers/auth_controllers.dart';
import '../../logic/controllers/theme_controller.dart';
import '../../utils/theme.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.theme.backgroundColor,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: TextButton(
              child: Text('dark mode'),
              onPressed: () {
               ThemeController().changesTheme();
                print(Get.isDarkMode);
              },
            ),
          ),
        ));
  }
}
