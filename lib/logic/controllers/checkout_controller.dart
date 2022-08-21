import 'package:get/get.dart';

import '../../utils/sharPreferenceUtils .dart';

class CheckoutController extends GetxController {
  var addres;
  @override
  void onInit() async {
    // TODO: implement onInit
    await address();
    print(addres);
    super.onInit();
  }

  address() async {
    addres = await SharedPrefs.instance.getString("currentAddress") as String;
    update();
  }
    updateaddress() async {
    addres = await SharedPrefs.instance.getString("currentAddress") as String;
    update();
  }
}
