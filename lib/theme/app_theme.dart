import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_typography.dart';
import 'app_styles.dart';

class AppTheme {
  static ThemeData get lightTheme => ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        colorScheme: ColorScheme.light(
          primary: AppColors.primary,
          secondary: AppColors.secondary,
          surface: AppColors.surface,
          error: AppColors.error,
          onPrimary: Colors.white,
          onSecondary: Colors.white,
          onSurface: AppColors.textPrimary,
        ),
        textTheme: TextTheme(
          displayLarge: AppTypography.h1,
          displayMedium: AppTypography.h2,
          displaySmall: AppTypography.h3,
          headlineMedium: AppTypography.h4,
          headlineSmall: AppTypography.h5,
          titleLarge: AppTypography.h6,
          bodyLarge: AppTypography.body1,
          bodyMedium: AppTypography.body2,
          titleMedium: AppTypography.subtitle1,
          titleSmall: AppTypography.subtitle2,
          labelLarge: AppTypography.button,
          bodySmall: AppTypography.caption,
          labelSmall: AppTypography.overline,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: AppStyles.primaryButton,
        ),
        textButtonTheme: TextButtonThemeData(
          style: AppStyles.textButton,
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: AppColors.surface,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: AppColors.border),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: AppColors.border),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: AppColors.primary),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: AppColors.error),
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        ),
        cardTheme: CardTheme(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: const BorderSide(color: AppColors.border),
          ),
        ),
        listTileTheme: AppStyles.listTileTheme,
        appBarTheme: AppStyles.appBarTheme,
        bottomNavigationBarTheme: AppStyles.bottomNavigationBarTheme,
        snackBarTheme: AppStyles.snackBarTheme,
      );

  static ThemeData get darkTheme => ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorScheme: ColorScheme.dark(
          primary: AppColors.primary,
          secondary: AppColors.secondary,
          surface: AppColors.darkSurface,
          error: AppColors.error,
          onPrimary: Colors.white,
          onSecondary: Colors.white,
          onSurface: AppColors.darkTextPrimary,
        ),
        textTheme: TextTheme(
          displayLarge:
              AppTypography.h1.copyWith(color: AppColors.darkTextPrimary),
          displayMedium:
              AppTypography.h2.copyWith(color: AppColors.darkTextPrimary),
          displaySmall:
              AppTypography.h3.copyWith(color: AppColors.darkTextPrimary),
          headlineMedium:
              AppTypography.h4.copyWith(color: AppColors.darkTextPrimary),
          headlineSmall:
              AppTypography.h5.copyWith(color: AppColors.darkTextPrimary),
          titleLarge:
              AppTypography.h6.copyWith(color: AppColors.darkTextPrimary),
          bodyLarge:
              AppTypography.body1.copyWith(color: AppColors.darkTextPrimary),
          bodyMedium:
              AppTypography.body2.copyWith(color: AppColors.darkTextPrimary),
          titleMedium: AppTypography.subtitle1
              .copyWith(color: AppColors.darkTextPrimary),
          titleSmall: AppTypography.subtitle2
              .copyWith(color: AppColors.darkTextPrimary),
          labelLarge:
              AppTypography.button.copyWith(color: AppColors.darkTextPrimary),
          bodySmall:
              AppTypography.caption.copyWith(color: AppColors.darkTextPrimary),
          labelSmall:
              AppTypography.overline.copyWith(color: AppColors.darkTextPrimary),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: AppStyles.primaryButton,
        ),
        textButtonTheme: TextButtonThemeData(
          style: AppStyles.textButton,
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: AppColors.darkSurface,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: AppColors.darkBorder),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: AppColors.darkBorder),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: AppColors.primary),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: AppColors.error),
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        ),
        cardTheme: CardTheme(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: const BorderSide(color: AppColors.darkBorder),
          ),
        ),
        listTileTheme: AppStyles.listTileTheme,
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.darkSurface,
          foregroundColor: AppColors.darkTextPrimary,
          elevation: 0,
          centerTitle: true,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: AppColors.darkSurface,
          selectedItemColor: AppColors.primary,
          unselectedItemColor: AppColors.darkTextSecondary,
          type: BottomNavigationBarType.fixed,
          elevation: 8,
        ),
        snackBarTheme: SnackBarThemeData(
          backgroundColor: AppColors.darkSurface,
          contentTextStyle: AppTypography.body2.copyWith(
            color: AppColors.darkTextPrimary,
          ),
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      );
}
