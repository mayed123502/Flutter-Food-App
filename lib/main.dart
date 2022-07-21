import 'package:ecommerce_app/routes/routes.dart';
import 'package:ecommerce_app/utils/my_string.dart';
import 'package:ecommerce_app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'language/localiztion.dart';
import 'logic/controllers/theme_controller.dart';

late SharedPreferences shaedpref;

void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  shaedpref = await SharedPreferences.getInstance();
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Ecommerce app',
          locale: Locale(shaedpref.getString('lang').toString()),
          translations: LocaliztionApp(),
          fallbackLocale: Locale(ene),
          theme: ThemesApp.light,
          darkTheme: ThemesApp.dark,
          themeMode: ThemeController().themeDataGet,
          initialRoute: AppRoutes.splash,
          getPages: AppRoutes.routes,
        );
      },
    );
  }
}
