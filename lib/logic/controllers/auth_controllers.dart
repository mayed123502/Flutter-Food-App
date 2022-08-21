import 'package:get/get.dart';

import '../../model/user.dart';
import '../../routes/routes.dart';
import '../../services/auth_api.dart';
import '../../utils/sharPreferenceUtils .dart';
import '../../view/widgets/get_snackbar.dart';

class AuthController extends GetxController {
  bool isVisibilty = true;

  bool validate = true;
  String? currentTextPin;

  bool loding = false;
  void visibility() {
    isVisibilty = !isVisibilty;

    update();
  }

  void currentTextPinCode(String value) {
    currentTextPin = value;
    update();
  }

  void startLoding() {
    loding = true;
    update();
  }

  void stopLoding() {
    loding = false;
    update();
  }

  String? validaterPinCode(String value) {
    if (value.length < 3) {
      return "I'm from validator";
    } else {
      return null;
    }
  }

  void validaterTrue() {
    validate = true;

    update();
  }

  void validaterFalse() {
    validate = false;

    update();
  }

  Future<bool> signup(
      {required String phone,
      required String fullName,
      required String password,
      required String email}) async {
    startLoding();

    try {
      bool result = await AuthApi().signupAPI(phone, fullName, password, email);
      stopLoding();

      if (result == true) {
        Get.toNamed(Routes.mainScreen);
      }
      if (result == false) {
        GetSnackbar(title: "Oops! Something went wrong.", supTitle: '');
      }
      return true;
    } catch (e) {
      print(e);
      stopLoding();

      GetSnackbar(title: "Oops! Something went wrong.", supTitle: '');

      return false;
    }
  }

  Future<void> login({
    required String email,
    required String password,
  }) async {
    startLoding();

    try {
      UserModel user = await AuthApi().login(
        email: email,
        password: password,
      );

      stopLoding();

      if (user.user != null) {
        Get.toNamed(Routes.mainScreen);
      } else {
        GetSnackbar(title: "Oops! Something went wrong.", supTitle: '');
      }
    } catch (e) {
      stopLoding();
      GetSnackbar(supTitle: '', title: "Oops! Something went wrong.");
    }
  }

  Future<void> resetPasswordStep1({
    required String email,
  }) async {
    startLoding();
    bool result = await AuthApi().resetPasswordStep1(
      email: email,
    );
    if (result == true) {
      stopLoding();
      Get.toNamed(Routes.sendOTPScreen);
    } else {
      stopLoding();

      GetSnackbar(supTitle: '', title: "Oops! Something went wrong.");
    }
  }

  Future<void> resetPasswordStep2({
    required String code,
  }) async {
    startLoding();

    bool result = await AuthApi().resetPasswordStep2(
      code: code,
    );
    if (result == true) {
      stopLoding();

      Get.toNamed(Routes.newPwScreen, arguments: [
        {'code': code},
      ]);
    } else {
      stopLoding();

      GetSnackbar(supTitle: '', title: "Oops! Something went wrong.");
    }
  }

  Future<void> resetPasswordStep3({
    required String code,
    required String password,
  }) async {
    startLoding();

    bool result =
        await AuthApi().resetPasswordStep3(code: code, password: password);
    if (result == true) {
      stopLoding();

      Get.toNamed(Routes.loginScreen);
    } else {
      stopLoding();

      GetSnackbar(supTitle: '', title: "Oops! Something went wrong.");
    }
  }


}
