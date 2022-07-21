import 'package:get/get.dart';

import '../../model/user.dart';
import '../../services/auth_api.dart';

class AuthController extends GetxController {
  bool isVisibilty = true;
  void visibility() {
    isVisibilty = !isVisibilty;

    update();
  }

  Future<bool> signup(
      {required String phone,
      required String fullName,
      required String password,
      required String email}) async {
    try {
      UserModel? user =
          await AuthApi().signupAPI(phone, fullName, password, email);
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<bool> login({
    required String email,
    required String password,
  }) async {
    try {
      UserModel user = await AuthApi().login(
        email: email,
        password: password,
      );

      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

}
