import 'package:get/get_navigation/get_navigation.dart';

class MyLocale implements Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "ar": {
          "Log in": "تسجيل دخول",
          "Beautiful eCommerce app for \n resturant": "تطبيق التجارة الإلكترونية الجميل للمطاعم",
          "3": "التحويل الى العربية"
        },
        "en": {
          "Log in": "Log in",
          "Beautiful eCommerce app for \n resturant": "Beautiful eCommerce app for \n resturant",
          "3": "Change To Arbic"
        },
      };
}
