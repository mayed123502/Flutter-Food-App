import 'package:get/get.dart';

import '../logic/bindings/address_bindings.dart';
import '../logic/bindings/auth_bindings.dart';
import '../logic/bindings/cart_bindings.dart';
import '../logic/bindings/category_bindings.dart';
import '../logic/bindings/checkout_binding.dart';
import '../logic/bindings/favorites_bindings.dart';
import '../logic/bindings/fode_bindings.dart';
import '../logic/bindings/home_bindings.dart';
import '../logic/bindings/main_bindings.dart';
import '../logic/bindings/myLocaleBinding.dart';
import '../logic/bindings/offer_binding.dart';
import '../logic/bindings/onBoarding_bindings.dart';
import '../logic/bindings/onBoarding_home_bindings.dart';
import '../logic/bindings/productDetails_bindings.dart';
import '../logic/bindings/profileSettingBinding.dart';
import '../logic/bindings/resturantPage_bindings.dart';
import '../logic/bindings/resturant_bindings.dart';
import '../logic/bindings/reviewProduct_bindings.dart';
import '../logic/bindings/search_bindings.dart';
import '../logic/bindings/settengs_bindings.dart';
import '../logic/controllers/category_controller.dart';
import '../view/screens/allFood_Screen.dart';
import '../view/screens/auth/ForgotPassword/sendOTPScreen.dart';
import '../view/screens/auth/ForgotPassword/forgotpassword_screen.dart';
import '../view/screens/auth/ForgotPassword/newPwScreen.dart';
import '../view/screens/auth/login_screen.dart';
import '../view/screens/auth/signup_screen.dart';
import '../view/screens/cart/cart_screen.dart';
import '../view/screens/cart/changeAddressScreen.dart';
import '../view/screens/cart/checkout_screen.dart';
import '../view/screens/category_screen.dart';
import '../view/screens/search/filter_screen.dart';
import '../view/screens/food_screen.dart';
import '../view/screens/home_screen.dart';
import '../view/screens/main_screen.dart';
import '../view/screens/product_details_scree.dart';
import '../view/screens/review/allReview_screen.dart';
import '../view/screens/review/writeReview_screen.dart';
import '../view/screens/settings/changePassword_screen.dart';
import '../view/screens/settings/myOrders.dart';
import '../view/screens/notification_screen.dart';
import '../view/screens/onboarding_screen.dart';
import '../view/screens/resturant_Screen.dart';
import '../view/screens/search/search_screen.dart';
import '../view/screens/settings/offer_screen.dart';
import '../view/screens/settings/profileSetting.dart';

import '../view/screens/settings/restPassword.dart';
import '../view/screens/settings/settings_screen.dart';
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
        bindings: [
          OnBoardingBinding(),
        ]),
    GetPage(
      name: Routes.forgotPasswordScreen,
      page: () => ForgotPasswordScreen(),
      binding: AuthBindings(),
    ),
    GetPage(
      name: Routes.mainScreen,
      page: () => MainScreen(),
      bindings: [
        AuthBindings(),
        MyLocaleBindings(),
        MainBindings(),
        FavoritesBindings(),
        OnBoardingHomeBinding(),
        SettengsBindings(),
        CategotyBindings(),
        HomeBindings(),
      ],
    ),
    GetPage(
      name: Routes.homeScreen,
      page: () => HomeScreen(),
      binding: OnBoardingHomeBinding(),
    ),
    GetPage(
      name: Routes.sendOTPScreen,
      page: () => SendOTPScreen(),
      binding: AuthBindings(),
    ),
    GetPage(
      name: Routes.newPwScreen,
      page: () => NewPwScreen(),
    ),
    GetPage(
      name: Routes.cartScreen,
      page: () => CartScreen(),
      // binding:  CartBindings(),
    ),
    GetPage(
        name: Routes.searchScreen,
        page: () => SearchScreen(),
        binding: SearchBindings()),
    GetPage(
      name: Routes.filterScreen,
      page: () => FilterScreen(),
    ),
    GetPage(
        name: Routes.settingsScreen,
        page: () => SettingsScreen(),
        binding: SettengsBindings()),
    GetPage(
        name: Routes.profileSetting,
        page: () => ProfileSetting(),
        binding: ProfileSettingBinding()),
    GetPage(
      name: Routes.restPasswordScreen,
      page: () => RestPasswordScreen(),
    ),
    GetPage(
      name: Routes.notificatonScreen,
      page: () => NotificatonScreen(),
    ),
    GetPage(
        name: Routes.categoryScreen,
        page: () => CategoryScreen(),
        binding: ResturantBinding()),
    GetPage(
        name: Routes.resturantScreen,
        page: () => ResturantScreen(),
        binding: ResturantBageBinding()),
    GetPage(
      name: Routes.myOrdersScreen,
      page: () => MyOrdersScreen(),
    ),
    // GetPage(
    //   name: Routes.foodScreen,
    //   page: () => FoodScreen(),
    // ),

    GetPage(
        name: Routes.productDetailsScreen,
        page: () => ProductDetailsScreen(),
        bindings: [
          ProductDetailsBindings(),
          FavoritesBindings(),
        ]),
    GetPage(
      name: Routes.checkoutScreen,
      page: () => CheckoutScreen(),
      binding: CheckoutBindings()
    ),
    GetPage(
        name: Routes.changeAddressScreen,
        page: () => ChangeAddressScreen(),
        binding: AddressBindings()),
    GetPage(
        name: Routes.allReviewScreen,
        page: () => AllReviewScreen(),
        binding: RreviewProductBinding()),

    GetPage(
      name: Routes.writeReviewScreen,
      page: () => WriteReviewScreen(),
    ),
    GetPage(
        name: Routes.allFoodScreen,
        page: () => AllFoodScreen(),
        binding: FodeBindings()),
    GetPage(
      name: Routes.offerScreen,
      page: () => OfferScreen(),
      binding: OfferBindings(),
    ),
    GetPage(
      name: Routes.updatePassword,
      page: () => UpdatePassword(),
    ),
  ];
}

class Routes {
  static const onBoardingScreen = '/onBoardingScreen';

  static const loginScreen = '/loginScreen';
  static const signUpScreen = '/signUpScreen';
  static const forgotPasswordScreen = '/forgotPasswordScreen';
  static const sendOTPScreen = '/sendOTPScreen';
  static const newPwScreen = '/newPwScreen';

  static const mainScreen = '/mainScreen';
  static const cartScreen = '/cartScreen';
  static const splashScreen = '/splashScreen';
  static const homeScreen = '/homeScreen';
  static const searchScreen = '/searchScreen';
  static const filterScreen = '/filterScreen';
  static const favoritesScreen = '/favoritesScreen';
  static const settingsScreen = '/settingsScreen';
  static const profileSetting = '/profileSetting';
  static const restPasswordScreen = '/restPasswordScreen';
  static const notificatonScreen = '/notificatonScreen';
  static const categoryScreen = '/categoryScreen';
  static const resturantScreen = '/resturantScreen';
  static const myOrdersScreen = '/myOrdersScreen';
  static const foodScreen = '/foodScreen';
  static const productDetailsScreen = '/productDetailsScreen';

  static const checkoutScreen = '/checkoutScreen';

  static const changeAddressScreen = '/changeAddressScreen';

  static const allReviewScreen = '/allReviewScreen';
  static const writeReviewScreen = '/writeReviewScreen';
  static const allFoodScreen = '/allFoodScreen';
  static const offerScreen = '/offerScreen';
  static const updatePassword = '/changePassword';

  // ForgotPasswordCodeScreen

  // OnBoarding
}
