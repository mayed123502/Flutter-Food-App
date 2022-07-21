import 'package:flutter/material.dart';

const Color mainColor = Color.fromRGBO(255, 108, 68, 1);
const Color onBoardingDocsColor = Color.fromRGBO(144, 152, 177, 1);
const Color onBoardingIndcatorColor = Color.fromRGBO(229, 229, 229, 1);
const Color onBoardingSkipButtonColor = Color.fromRGBO(28, 39, 96, 1);
const Color onBoardingSkipNextColor = Color.fromRGBO(255, 161, 51, 9);
const Color authTextFromFieldFillColor = Color.fromRGBO(241, 244, 254, 1);
const Color authTextFromFieldPorderColor = Color.fromRGBO(214, 218, 225, 1);
const Color authTextFromFieldHintTextColor = Color.fromRGBO(194, 189, 189, 1);
// Login with
const Color authLoginWithTextColor = Color.fromRGBO(28, 39, 96, 1);
const Color authSignUpTextLoginColor = Color.fromRGBO(195, 213, 255, 1);
// PreferredSize
const Color appBarPreferredSizeColor = Color.fromRGBO(112, 112, 112, 1);

// ForgotPasswordScreen
const Color titleForgotPasswordScreen = Color.fromRGBO(137, 139, 154, 1);

const Color authTextFromFieldErrorBorderColor =
    Color.fromRGBO(204, 151, 151, 1);
const Color pinCodeTextFieldColor = Color.fromRGBO(112, 112, 112, 1);

const Color darkGreyClr = Color(0xFF121212);

class ThemesApp {
  static final light = ThemeData(
    primaryColor: mainColor,
    backgroundColor: Colors.white,
    brightness: Brightness.light,
  );

  static final dark = ThemeData(
    primaryColor: darkGreyClr,
    backgroundColor: darkGreyClr,
    brightness: Brightness.dark,
  );
}
