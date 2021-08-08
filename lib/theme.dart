import 'package:analog_clock/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

// Our light/Primary Theme
ThemeData themeData(BuildContext context) {
  return ThemeData(
    appBarTheme: appBarTheme,
    // fontFamily: "GoogleSans",
    primaryColor: kPrimaryColor,
    // colorSchema.secondary replace accentColor
    // accentColor: kAccentLightColor,
    scaffoldBackgroundColor: Colors.white,
    colorScheme: const ColorScheme.light(
      primary: kAccentLightColor,
      secondary: kSecondaryLightColor,
      // on light theme surface = Colors.white by default
    ),
    backgroundColor: Colors.white,
    iconTheme: const IconThemeData(color: kBodyTextColorLight),
    // floatingActionButtonTheme replace accentIconTheme
    // accentIconTheme: const IconThemeData(color: kAccentIconLightColor),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: kAccentIconLightColor,
    ),
    primaryIconTheme: const IconThemeData(color: kPrimaryIconLightColor),
    textTheme: GoogleFonts.latoTextTheme().copyWith(
      bodyText1: const TextStyle(color: kBodyTextColorLight),
      bodyText2: const TextStyle(color: kBodyTextColorLight),
      headline4: const TextStyle(color: kTitleTextLightColor, fontSize: 32),
      headline1: const TextStyle(color: kTitleTextLightColor, fontSize: 80),
    ),
    // textTheme: const TextTheme(
    //   bodyText1: TextStyle(color: kBodyTextColorLight),
    //   bodyText2: TextStyle(color: kBodyTextColorLight),
    //   headline4: TextStyle(color: kTitleTextLightColor, fontSize: 32),
    //   headline1: TextStyle(color: kTitleTextLightColor, fontSize: 80),
    // ),
  );
}

// Dark Them
ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
    primaryColor: kPrimaryColor,
    // accentColor: kAccentDarkColor,
    scaffoldBackgroundColor: const Color(0xFF0D0C0E),
    appBarTheme: appBarTheme,
    colorScheme: const ColorScheme.light(
      primary: kAccentDarkColor,
      secondary: kSecondaryDarkColor,
      surface: kSurfaceDarkColor,
    ),
    backgroundColor: kBackgroundDarkColor,
    iconTheme: const IconThemeData(color: kBodyTextColorDark),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: kAccentIconDarkColor,
    ),
    primaryIconTheme: const IconThemeData(color: kPrimaryIconDarkColor),
    textTheme: GoogleFonts.latoTextTheme().copyWith(
      bodyText1: const TextStyle(color: kBodyTextColorDark),
      bodyText2: const TextStyle(color: kBodyTextColorDark),
      headline4: const TextStyle(color: kTitleTextDarkColor, fontSize: 32),
      headline1: const TextStyle(color: kTitleTextDarkColor, fontSize: 80),
    ),
  );
}

AppBarTheme appBarTheme = const AppBarTheme(
  color: Colors.transparent,
  elevation: 0,
);
