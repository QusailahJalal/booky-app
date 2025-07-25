import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:my_bookly_app/core/theme/app_colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    colorScheme: ColorScheme.light(
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      background: AppColors.backgroundLight,
      surface: AppColors.surfaceLight,
      onPrimary: AppColors.onPrimary,
      onSecondary: AppColors.onSecondary,
      onBackground: AppColors.onBackgroundLight,
      onSurface: AppColors.onSurfaceLight,
    ),
    scaffoldBackgroundColor: AppColors.backgroundLight,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.appBarLight,
      foregroundColor: AppColors.onPrimary,
      elevation: 0,
      iconTheme: IconThemeData(color: AppColors.iconLight),
    ),
    iconTheme: IconThemeData(color: AppColors.iconLight),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.fabBackground,
      foregroundColor: AppColors.fabForeground,
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: AppColors.primary,
      textTheme: ButtonTextTheme.primary,
    ),
    textTheme: GoogleFonts.montserratTextTheme(
      TextTheme(
        displayLarge: TextStyle(
          fontSize: 57.sp,
          fontWeight: FontWeight.bold,
          color: AppColors.textPrimaryLight,
        ),
        displayMedium: TextStyle(
          fontSize: 45.sp,
          fontWeight: FontWeight.bold,
          color: AppColors.textPrimaryLight,
        ),
        displaySmall: TextStyle(
          fontSize: 36.sp,
          fontWeight: FontWeight.bold,
          color: AppColors.textPrimaryLight,
        ),

        headlineLarge: TextStyle(
          fontSize: 32.sp,
          fontWeight: FontWeight.bold,
          color: AppColors.textPrimaryLight,
        ),
        headlineMedium: TextStyle(
          fontSize: 28.sp,
          fontWeight: FontWeight.w600,
          color: AppColors.textPrimaryLight,
        ),
        headlineSmall: TextStyle(
          fontSize: 24.sp,
          fontWeight: FontWeight.w600,
          color: AppColors.textSecondaryLight,
        ),

        titleLarge: TextStyle(
          fontSize: 22.sp,
          fontWeight: FontWeight.w600,
          color: AppColors.textSecondaryLight,
        ),
        titleMedium: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.w600,
          color: AppColors.textSecondaryLight,
        ),
        titleSmall: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w500,
          color: AppColors.textSecondaryLight,
        ),

        bodyLarge: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
          color: AppColors.textSecondaryLight,
        ),
        bodyMedium: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          color: AppColors.textSecondaryLight,
        ),
        bodySmall: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
          color: AppColors.textSecondaryLight,
        ),

        labelLarge: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          color: AppColors.textPrimaryLight,
        ),
        labelMedium: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
          color: AppColors.textSecondaryLight,
        ),
        labelSmall: TextStyle(
          fontSize: 11.sp,
          fontWeight: FontWeight.w400,
          color: AppColors.textSecondaryLight,
        ),
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.primary,
    colorScheme: ColorScheme.dark(
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      background: AppColors.backgroundDark,
      surface: AppColors.surfaceDark,
      onPrimary: AppColors.onPrimary,
      onSecondary: AppColors.onSecondary,
      onBackground: AppColors.onBackgroundDark,
      onSurface: AppColors.onSurfaceDark,
    ),
    scaffoldBackgroundColor: AppColors.backgroundDark,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.appBarDark,
      foregroundColor: AppColors.onPrimary,
      elevation: 0,
      iconTheme: IconThemeData(color: AppColors.iconDark),
    ),
    iconTheme: IconThemeData(color: AppColors.iconDark),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.fabBackground,
      foregroundColor: AppColors.fabForeground,
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: AppColors.primary,
      textTheme: ButtonTextTheme.primary,
    ),
    textTheme: GoogleFonts.montserratTextTheme(
      TextTheme(
        displayLarge: TextStyle(
          fontSize: 57.sp,
          fontWeight: FontWeight.bold,
          color: AppColors.textPrimaryDark,
        ),
        displayMedium: TextStyle(
          fontSize: 45.sp,
          fontWeight: FontWeight.bold,
          color: AppColors.textPrimaryDark,
        ),
        displaySmall: TextStyle(
          fontSize: 36.sp,
          fontWeight: FontWeight.bold,
          color: AppColors.textPrimaryDark,
        ),

        headlineLarge: TextStyle(
          fontSize: 32.sp,
          fontWeight: FontWeight.bold,
          color: AppColors.textPrimaryDark,
        ),
        headlineMedium: TextStyle(
          fontSize: 28.sp,
          fontWeight: FontWeight.w600,
          color: AppColors.textPrimaryDark,
        ),
        headlineSmall: TextStyle(
          fontSize: 24.sp,
          fontWeight: FontWeight.w600,
          color: AppColors.textPrimaryDark,
        ),

        titleLarge: TextStyle(
          fontSize: 22.sp,
          fontWeight: FontWeight.w600,
          color: AppColors.textPrimaryDark,
        ),
        titleMedium: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.w600,
          color: AppColors.textPrimaryDark,
        ),
        titleSmall: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w500,
          color: AppColors.textPrimaryDark,
        ),

        bodyLarge: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
          color: AppColors.textPrimaryDark,
        ),
        bodyMedium: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          color: AppColors.textPrimaryDark,
        ),
        bodySmall: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
          color: AppColors.textPrimaryDark,
        ),

        labelLarge: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          color: AppColors.textPrimaryDark,
        ),
        labelMedium: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
          color: AppColors.textPrimaryDark,
        ),
        labelSmall: TextStyle(
          fontSize: 11.sp,
          fontWeight: FontWeight.w400,
          color: AppColors.textPrimaryDark,
        ),
      ),
    ),
  );
}
