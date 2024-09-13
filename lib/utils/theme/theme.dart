import 'package:flutter/material.dart';
import 'package:lesson/utils/constants/app_colors.dart';
import 'package:lesson/utils/constants/app_text_style.dart';

final theme = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: AppColors.secondaryColor,
  primaryColor: AppColors.primary,
  secondaryHeaderColor: AppColors.secondaryColor,
  appBarTheme: const AppBarTheme(
      foregroundColor: AppColors.white,
      backgroundColor: AppColors.secondaryColor,
      titleTextStyle: TextStyle(fontSize: 19.99, fontWeight: FontWeight.w700)),
  inputDecorationTheme: const InputDecorationTheme(
    hintStyle: TextStyle(fontSize: 17.7, color: AppColors.textCollor),
    filled: true,
    fillColor: AppColors.fillColor,
    border: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.all(
        Radius.circular(12),
      ),
    ),
  ),
  textTheme: const TextTheme(
    titleSmall: AppTextStyle.titleSmall,
    displaySmall: AppTextStyle.displaySmall,
    titleLarge: AppTextStyle.titleBig
  ),
  elevatedButtonTheme: const ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStatePropertyAll(AppColors.primary),
      foregroundColor: WidgetStatePropertyAll(AppColors.secondaryColor),
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(13.22),
          ),
        ),
      ),
      textStyle: WidgetStatePropertyAll(
        TextStyle(
          color: AppColors.secondaryColor,
          fontSize: 20,
          fontWeight: FontWeight.w500
        ),
      ),
    ),
  ),
);
