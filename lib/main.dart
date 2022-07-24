import 'package:ecommerce_app/routes/routes.dart';
import 'package:ecommerce_app/utils/my_string.dart';
import 'package:ecommerce_app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'locale/locale_controller.dart';
import 'logic/controllers/theme_controller.dart';
import 'utils/sharPreferenceUtils .dart';

late SharedPreferences shaedpref;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SharedPrefs.init();
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
          locale: const Locale('en'),

          // SharedPrefs.instance.getString("curruntLang") == null
          //     ? Get.deviceLocale
          //     : Locale(SharedPrefs.instance.getString("curruntLang")!),
          translations: MyLocale(),
          fallbackLocale: const Locale('en'),
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
