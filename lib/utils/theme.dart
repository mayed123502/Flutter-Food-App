import 'package:flutter/material.dart';

Color mainColor = const Color.fromRGBO(255, 108, 68, 1);
const Color onBoardingDocsColor = Color.fromRGBO(144, 152, 177, 1);
const Color onBoardingIndcatorColor = Color.fromRGBO(229, 229, 229, 1);
const Color onBoardingSkipButtonColor = Color.fromRGBO(28, 39, 96, 1);
const Color onBoardingSkipNextColor = Color.fromRGBO(255, 161, 51, 9);
const Color authTextFromFieldFillColor = Color.fromRGBO(241, 244, 254, 1);
const Color authTextFromFieldPorderColor = Color.fromRGBO(214, 218, 225, 1);
const Color authTextFromFieldHintTextColor = Color.fromRGBO(194, 189, 189, 1);
// Login with
Color authLoginWithTextColor = const Color.fromRGBO(28, 39, 96, 1);
const Color authSignUpTextLoginColor = Color.fromRGBO(195, 213, 255, 1);
// PreferredSize
const Color appBarPreferredSizeColor = Color.fromRGBO(112, 112, 112, 1);

// ForgotPasswordScreen
const Color titleForgotPasswordScreen = Color.fromRGBO(137, 139, 154, 1);

const Color authTextFromFieldErrorBorderColor =
    Color.fromRGBO(204, 151, 151, 1);
const Color pinCodeTextFieldColor = Color.fromRGBO(112, 112, 112, 1);
const Color fullColorLogo = Color.fromRGBO(255, 161, 51, .08);

const Color darkGreyClr = Color(0xFF121212);
const Color darkMainColor = Color.fromRGBO(197, 58, 25, 1);
const Color onBoardingHomeScreen = Color.fromRGBO(249, 86, 11, 1);
const Color priceColor = Color.fromRGBO(227, 163, 106, 1);
const Color headline1Color = Color.fromRGBO(0, 76, 255, 1);
const Color headline2Color = Color.fromRGBO(144, 152, 177, 1);
const Color filterTitlesColor = Color.fromRGBO(28, 39, 96, 1);
const Color dateColor = Color.fromRGBO(39, 174, 96, 1);



// Color colorTheme({required Colors lightColors ,required Colors darkColors}){
//   return   Get.isDarkMode ?
// }
class ThemesApp {
  static final light = ThemeData(
    primaryColor: mainColor,
    backgroundColor: Colors.white,
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
    buttonColor: mainColor,
    textTheme: TextTheme(
      headline1: TextStyle(color: headline1Color),
      headline2: TextStyle(color: headline2Color),
    ),
  );

  static final dark = ThemeData(
      primaryColor: darkGreyClr,
      backgroundColor: darkGreyClr,
      brightness: Brightness.dark,
      appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
      buttonColor: darkMainColor);
}

final List<Color> colors = [
  const Color.fromRGBO(246, 59, 8, 1),
  const Color.fromRGBO(250, 123, 9, 1),
  const Color.fromRGBO(100, 206, 75, 1),
  const Color.fromRGBO(255, 209, 71, 1),
  const Color.fromRGBO(246, 59, 8, 1),
  const Color.fromRGBO(250, 123, 9, 1),
  const Color.fromRGBO(100, 206, 75, 1),
  const Color.fromRGBO(255, 209, 71, 1),
];
