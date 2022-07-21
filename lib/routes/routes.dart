import 'package:get/get.dart';

import '../logic/bindings/auth_bindings.dart';
import '../logic/bindings/onBoarding_bindings.dart';
import '../view/screens/auth/ForgotPassword/forgotpassword_codeScreen.dart';
import '../view/screens/auth/ForgotPassword/forgotpassword_screen.dart';
import '../view/screens/auth/ForgotPassword/forgotpassword_updateScreen.dart';
import '../view/screens/auth/login_screen.dart';
import '../view/screens/auth/signup_screen.dart';
import '../view/screens/home_screen.dart';
import '../view/screens/main_screen.dart';
import '../view/screens/onboarding_screen.dart';
import '../view/screens/splash_screen.dart';

class AppRoutes {
  static const splash = Routes.splashScreen;
  static const mainSreen = Routes.mainScreen;

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
    ),
    GetPage(
      name: Routes.mainScreen,
      page: () => const MainScreen(),
    ),
    GetPage(
      name: Routes.homeScreen,
      page: () => HomeScreen(),
      binding: AuthBindings(),
    ),
    GetPage(
      name: Routes.forgotPasswordCodeScreen,
      page: () => ForgotPasswordCodeScreen(),
    ),
    GetPage(
      name: Routes.forgotPasswordUpdateScreen,
      page: () => ForgotPasswordUpdateScreen(),
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
