import 'package:get/get.dart';

import '../controllers/address_controllers.dart';
import '../controllers/auth_controllers.dart';

class AddressBindings extends Bindings{
  @override
  void dependencies() {
    Get.put(AddressController());
   }

}