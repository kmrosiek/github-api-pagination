import 'package:common/constants/app_colors.dart';
import 'package:common/constants/dim.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.scaffoldBackground,
    useMaterial3: true,
    inputDecorationTheme: InputDecorationTheme(
      focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: AppColors.border),
          borderRadius: BorderRadius.circular(Dim.borderRadius)),
      border: OutlineInputBorder(
        borderSide: const BorderSide(width: 1, color: AppColors.border),
        borderRadius: BorderRadius.circular(Dim.borderRadius),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(foregroundColor: Colors.black)),
    progressIndicatorTheme:
        const ProgressIndicatorThemeData(color: Colors.black),
    cardTheme: const CardTheme(
        color: AppColors.card,
        margin: EdgeInsets.symmetric(vertical: Dim.verticalCardsMargin),
        elevation: 1.5,
        shape: RoundedRectangleBorder(
            side: BorderSide(color: AppColors.border),
            borderRadius: BorderRadius.all(Radius.circular(Dim.borderRadius)))),
  );
}
