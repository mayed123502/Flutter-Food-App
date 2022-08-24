import 'package:flutter/material.dart';

Color mainColor = const Color.fromRGBO(255, 108, 68, 1);
const Color onBoardingDocsColor = Color.fromRGBO(144, 152, 177, 1);
const Color onBoardingIndcatorColor = Color.fromRGBO(229, 229, 229, 1);
const Color onBoardingSkipButtonColor = Color.fromRGBO(28, 39, 96, 1);
const Color onBoardingSkipNextColor = Color.fromRGBO(255, 161, 51, 9);
const Color authTextFromFieldFillColor = Color.fromRGBO(241, 244, 254, 1);
const Color authTextFromFieldPorderColor = Color.fromRGBO(214, 218, 225, 1);
const Color authTextFromFieldHintTextColor = Color.fromRGBO(194, 189, 189, 1);
Color authLoginWithTextColor = const Color.fromRGBO(28, 39, 96, 1);
const Color authSignUpTextLoginColor = Color.fromRGBO(195, 213, 255, 1);
const Color appBarPreferredSizeColor = Color.fromRGBO(112, 112, 112, 1);
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

class ThemesApp {
  static final light = ThemeData.light().copyWith(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: mainColor,
    secondaryHeaderColor: Colors.grey.shade100,
    textTheme: TextTheme(
      headline1: TextStyle(
        color: Colors.black,
      ),
      headline2: TextStyle(
        color: Colors.white.withOpacity(.8),
      ),
      headline3: TextStyle(
        color: Colors.white,
      ),
      // conttiner
      headline4: TextStyle(
        color: Colors.white,
      ),
      headline5: TextStyle(
        color: Color.fromRGBO(144, 152, 177, 1),
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black45),
      centerTitle: true,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(mainColor))),
    bottomNavigationBarTheme:
        BottomNavigationBarThemeData(backgroundColor: Colors.white),
    iconTheme: IconThemeData(color: Colors.black),
    hintColor: authTextFromFieldHintTextColor,
  );

  static final dark = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Color(0xFF18172B),
    primaryColor: darkGreyClr,
        secondaryHeaderColor:Color(0xFF27273c),

    textTheme: TextTheme(
      headline1: TextStyle(
        color: Colors.white,
      ),
      headline2: TextStyle(
        color: Color(0xFF18172B).withOpacity(.8),
      ),
      headline3: TextStyle(
        color: Colors.black,
      ),
      headline4: TextStyle(
        color: Color(0xFF27273c),
      ),
      headline5: TextStyle(
        color: Color.fromRGBO(144, 152, 177, 1),
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      toolbarTextStyle: TextStyle(color: Colors.white),
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.white),
    ),

    cardColor: Color(0xFF27273c),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(mainColor))),
    bottomNavigationBarTheme:
        BottomNavigationBarThemeData(backgroundColor: Color(0xFF1F1F30)),
    iconTheme: IconThemeData(color: Colors.white),

    hintColor: Colors.white,
  );
}
