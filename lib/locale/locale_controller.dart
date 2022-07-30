import 'package:get/get_navigation/get_navigation.dart';

class MyLocale implements Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "ar": {
          "Log in": "تسجيل دخول",
          'I already have an account. ': 'لدي حساب بالفعل.',
          'Beautiful eCommerce app for \n resturant':
              'تطبيق تجارة إلكترونية جميل للمطاعم',
          'Let\'s get Started': 'هيا بنا نبدأ',
          'Achieve more of your long-term \n goals in less time and stay on \n top of your important food in \n one place.':
              'حقق المزيد من أهدافك طويلة المدى في وقت أقل وابق على القمة طعامك المهم في مكان واحد.',
        },
        "en": {
          "Log in": "Log in",
          'I already have an account. ': 'I already have an account. ',
          'Beautiful eCommerce app for \n resturant':
              'Beautiful eCommerce app for \n resturant',
          'Let\'s get Started': 'Let\'s get Started',
          'Achieve more of your long-term \n goals in less time and stay on \n top of your important food in \n one place.':
              'Achieve more of your long-term \n goals in less time and stay on \n top of your important food in \n one place.',
        },
      };
}
