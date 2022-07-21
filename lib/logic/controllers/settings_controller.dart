import 'package:ecommerce_app/main.dart';
import 'package:ecommerce_app/utils/my_string.dart';
import 'package:get/get.dart';

class SettingsController extends GetxController {
  var langLocal = ara;
  @override
  void onInit() async {
    super.onInit();
    langLocal = (await getLanguage)!;
  }

  void saveLanguage(String lang) async {
    await shaedpref.setString("lang", lang);
  }

  Future<String>? get getLanguage async {
    return shaedpref.getString("lang")!;
  }

  void changeLanguage(String typeLang) {
    saveLanguage(typeLang);
    if (langLocal == typeLang) {
      return;
    }

    if (typeLang == ara) {
      langLocal = ara;
      saveLanguage(ara);
    } else {
      langLocal = ene;
      saveLanguage(ene);
    }
    update();
  }
}
