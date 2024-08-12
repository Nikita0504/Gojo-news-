import 'package:flutter/material.dart';
import 'package:gojo_news/internal/colors.dart';

class AppTheme {
  static final theme = ThemeData(
      primaryColor: AppColors.textColor,
      scaffoldBackgroundColor: AppColors.backgroundColor,
      useMaterial3: true,
      fontFamily: 'LeckerliOne',
      textTheme: const TextTheme(
        displaySmall: TextStyle(
          color: AppColors.textColor,
          fontSize: 15,
        ),
        displayMedium: TextStyle(
          color: Color.fromARGB(255, 221, 220, 220),
          fontSize: 12.5,
        ),
        titleSmall: TextStyle(
          color: AppColors.textColor,
          fontSize: 12.5,
        ),
        titleMedium: TextStyle(
          color: AppColors.textColor,
          fontSize: 16.5,
        ),
        titleLarge: TextStyle(
          color: AppColors.textColor,
          fontSize: 25,
        ),
      ),
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(size: 32),
        backgroundColor: AppColors.appBarBackgroundColor,
        scrolledUnderElevation: 0,
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.w500,
          color: AppColors.textColor,
          fontSize: 23,
        ),
      ),
      iconTheme: const IconThemeData(color: AppColors.textColor));
}
