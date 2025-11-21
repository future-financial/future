import 'package:flutter/material.dart';

class AppTextTheme {
  static TextTheme textTheme([BuildContext? context]) {
    double scale = 1.0;
    if (context != null) {
      final width = MediaQuery.of(context).size.width;
      if (width >= 1200) {
        scale = 1.4;
      } else if (width >= 600) {
        scale = 1.2;
      }
    }

    return TextTheme(
      displayLarge: TextStyle(
        fontSize: 48 * scale,
        fontWeight: FontWeight.bold,
      ),

      displayMedium: TextStyle(
        fontSize: 40 * scale,
        fontWeight: FontWeight.w600,
      ),

      displaySmall: TextStyle(
        fontSize: 32 * scale,
        fontWeight: FontWeight.w600,
      ),

      headlineLarge: TextStyle(
        fontSize: 28 * scale,
        fontWeight: FontWeight.w600,
      ),

      headlineMedium: TextStyle(
        fontSize: 24 * scale,
        fontWeight: FontWeight.w600,
      ),

      headlineSmall: TextStyle(
        fontSize: 20 * scale,
        fontWeight: FontWeight.w500,
      ),

      titleLarge: TextStyle(fontSize: 18 * scale, fontWeight: FontWeight.w600),

      titleMedium: TextStyle(fontSize: 16 * scale, fontWeight: FontWeight.w500),

      titleSmall: TextStyle(fontSize: 14 * scale, fontWeight: FontWeight.w500),

      bodyLarge: TextStyle(
        fontSize: 16 * scale,
        fontWeight: FontWeight.w400,
        height: 1.5,
      ),

      bodyMedium: TextStyle(
        fontSize: 14 * scale,
        fontWeight: FontWeight.w400,
        height: 1.5,
      ),

      bodySmall: TextStyle(
        fontSize: 12 * scale,
        fontWeight: FontWeight.w400,
        height: 1.5,
      ),

      labelLarge: TextStyle(fontSize: 14 * scale, fontWeight: FontWeight.w600),

      labelMedium: TextStyle(fontSize: 12 * scale, fontWeight: FontWeight.w500),

      labelSmall: TextStyle(fontSize: 11 * scale, fontWeight: FontWeight.w500),
    );
  }
}
