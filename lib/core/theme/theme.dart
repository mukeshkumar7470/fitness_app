import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'colors.dart';

/// Defines app theme including text themes.
class ApplicationTheme {
  static ThemeData getAppThemeData() => ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryColor: primaryColor,
        primarySwatch: primarySwatchColor,
        scaffoldBackgroundColor: scaffoldBackgroundColor,
        // colorScheme:_customColorScheme,
        iconTheme: const IconThemeData(color: iconColor),
        appBarTheme:
            const AppBarTheme(backgroundColor: backgroundColor),
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: primaryTextColor,
        ),
        textTheme: TextTheme(
          headlineLarge: TextStyle(
            fontSize: SizerUtil.deviceType == DeviceType.web ? 5.0.sp : 32,
            fontWeight: FontWeight.w800,
            color: primaryTextColor,
            fontFamily: 'Poppins',
          ),
          headline1: TextStyle(
            fontSize: SizerUtil.deviceType == DeviceType.web ? 4.5.sp : 24,
            fontWeight: FontWeight.w500,
            color: primaryTextColor,
            fontFamily: 'Poppins',
          ),
          headline2: TextStyle(
            fontSize: SizerUtil.deviceType == DeviceType.web ? 4.0.sp : 18,
            fontWeight: FontWeight.w500,
            color: primaryTextColor,
            fontFamily: 'Poppins',
          ),
          headline3: TextStyle(
            fontSize: SizerUtil.deviceType == DeviceType.web ? 3.5.sp : 16,
            fontWeight: FontWeight.w400,
            color: primaryTextColor,
            fontFamily: 'Poppins',
          ),
          headline4: TextStyle(
            fontSize: SizerUtil.deviceType == DeviceType.web ? 3.0.sp : 14,
            fontWeight: FontWeight.w600,
            color: primaryTextColor,
            fontFamily: 'Poppins',
          ),
          headline5: TextStyle(
            fontSize: SizerUtil.deviceType == DeviceType.web ? 2.5.sp : 12,
            fontWeight: FontWeight.w500,
            color: primaryTextColor,
            fontFamily: 'Poppins',
          ),
          headline6: TextStyle(
            fontSize: SizerUtil.deviceType == DeviceType.web ? 2.0.sp : 11,
            fontWeight: FontWeight.w400,
            color: primaryTextColor,
            fontFamily: 'Poppins',
          ),
          subtitle1: const TextStyle(
            fontSize: 8,
            fontWeight: FontWeight.w400,
            color: primaryColor,
            fontFamily: 'Poppins',
          ),
          subtitle2: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w400,
            color: primaryColor,
            fontFamily: 'Poppins',
          ),
          bodyText1: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: primaryColor,
            fontFamily: 'Poppins',
          ),
          bodyText2: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: primaryTextColor,
            fontFamily: 'Poppins',
          ),
          button: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: primaryTextColor,
            fontFamily: 'Poppins',
          ),
        ),
      );
}
