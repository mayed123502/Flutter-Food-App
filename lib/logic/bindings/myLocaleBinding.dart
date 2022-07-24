// ignore_for_file: file_names

import 'package:get/get.dart' ;

import '../../locale/locale.dart';

class MyLocaleBindings extends Bindings{
  @override
  void dependencies() {
    Get.put(MyLocaleController());
   }

}