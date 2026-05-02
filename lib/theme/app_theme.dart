import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static const Color primaryRed = Color(0xFF9E0B0F); // اللون الأحمر من التصميم
  static const Color backgroundWhite = Color(0xFFFFFFFF);
  static const Color textBlack = Color(0xFF000000);
  static const Color textGrey = Color(0xFF757575);
  static const Color cardBorder = Color(0xFFEEEEEE);
}

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primaryRed,
        primary: AppColors.primaryRed,
        surface: AppColors.backgroundWhite,
      ),
      scaffoldBackgroundColor: AppColors.backgroundWhite,
      textTheme: GoogleFonts.amiriTextTheme().copyWith(
        displayLarge: GoogleFonts.amiri(
          color: AppColors.primaryRed,
          fontWeight: FontWeight.bold,
          fontSize: 32,
        ),
        titleLarge: GoogleFonts.amiri(
          color: AppColors.primaryRed,
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
        bodyLarge: GoogleFonts.amiri(
          color: AppColors.textBlack,
          fontSize: 18,
        ),
        bodyMedium: GoogleFonts.amiri(
          color: AppColors.textGrey,
          fontSize: 16,
        ),
      ),
    );
  }
}
