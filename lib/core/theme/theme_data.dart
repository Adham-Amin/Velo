import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_transitions/go_transitions.dart';

class AppThemes {
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    pageTransitionsTheme: PageTransitionsTheme(
      builders: {
        TargetPlatform.android: GoTransitions.slide.toTop.withFade,
        TargetPlatform.iOS: GoTransitions.slide.toTop.withFade,
      },
    ),
    fontFamily: AppStyles.fontFamily,
    scaffoldBackgroundColor: AppColors.white,
    appBarTheme: AppBarTheme(
      titleTextStyle: AppStyles.textSemiBold18.copyWith(color: AppColors.black),

      backgroundColor: AppColors.white,
      elevation: 0,
      scrolledUnderElevation: 0,
      iconTheme: IconThemeData(color: AppColors.black),
    ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: AppStyles.textRegular16.copyWith(color: AppColors.greyBorder),
      filled: true,
      prefixIconColor: AppColors.greyBorder,
      fillColor: AppColors.background,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: AppColors.greyBorder),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: AppColors.primary),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: Colors.red),
      ),
    ),
  );
}
