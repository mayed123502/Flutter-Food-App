import 'package:get/get.dart';

import '../locale/locale.dart';
import '../logic/bindings/auth_bindings.dart';
import '../logic/bindings/main_bindings.dart';
import '../logic/bindings/myLocaleBinding.dart';
import '../logic/bindings/onBoarding_bindings.dart';
import '../logic/bindings/settengs_bindings.dart';
import '../view/screens/auth/ForgotPassword/forgotpassword_codeScreen.dart';
import '../view/screens/auth/ForgotPassword/forgotpassword_screen.dart';
import '../view/screens/auth/ForgotPassword/forgotpassword_updateScreen.dart';
import '../view/screens/auth/login_screen.dart';
import '../view/screens/auth/signup_screen.dart';
import '../view/screens/cart_screen.dart';
import '../view/screens/home_screen.dart';
import '../view/screens/main_screen.dart';
import '../view/screens/onboarding_screen.dart';
import '../view/screens/splash_screen.dart';

class AppRoutes {
  static const splash = Routes.splashScreen;

  static final routes = [
    GetPage(
      name: Routes.splashScreen,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: Routes.loginScreen,
      page: () => LoginScreen(),
      binding: AuthBindings(),
    ),
    GetPage(
      name: Routes.signUpScreen,
      page: () => SignUpScreen(),
    ),
    GetPage(
        name: Routes.onBoardingScreen,
        page: () => OnBoardingScreen(),
        binding: OnBoardingBinding()),
    GetPage(
      name: Routes.forgotPasswordScreen,
      page: () => ForgotPasswordScreen(),
      binding: AuthBindings(),
    ),
    GetPage(
      name: Routes.mainScreen,
      page: () => MainScreen(),
      bindings: [MyLocaleBindings(), MainBindings(),],
    ),
    GetPage(
      name: Routes.homeScreen,
      page: () => HomeScreen(),
      binding: OnBoardingBinding(),
    ),
    GetPage(
      name: Routes.forgotPasswordCodeScreen,
      page: () => ForgotPasswordCodeScreen(),
      binding: AuthBindings(),
    ),
    GetPage(
      name: Routes.forgotPasswordUpdateScreen,
      page: () => ForgotPasswordUpdateScreen(),
    ),
    GetPage(
      name: Routes.cartScreen,
      page: () => const CartScreen(),
    ),
  ];
}

class Routes {
  static const onBoardingScreen = '/onBoardingScreen';

  static const loginScreen = '/loginScreen';
  static const signUpScreen = '/signUpScreen';
  static const forgotPasswordScreen = '/forgotPasswordScreen';
  static const forgotPasswordCodeScreen = '/forgotPasswordCodeScreen';
  static const forgotPasswordUpdateScreen = '/forgotPasswordUpdateScreen';

  static const mainScreen = '/mainScreen';
  static const cartScreen = '/cartScreen';
  static const splashScreen = '/splashScreen';
  static const homeScreen = '/homeScreen';

  // ForgotPasswordCodeScreen

  // OnBoarding
}
