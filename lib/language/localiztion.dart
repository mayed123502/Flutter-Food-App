import 'package:ecommerce_app/language/ar.dart';
import 'package:ecommerce_app/language/en.dart';
import 'package:ecommerce_app/utils/my_string.dart';
import 'package:get/route_manager.dart';

class LocaliztionApp extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        ene: en,
        ara: ar,
      };
}
