import 'package:flutter/material.dart';

extension AppTextStyles on TextTheme {
  TextStyle get bodySmallBold =>
      bodySmall?.copyWith(fontWeight: FontWeight.bold) ??
      const TextStyle(fontSize: 12, fontWeight: FontWeight.bold);

  TextStyle get bodySmallMedium =>
      bodySmall?.copyWith(fontWeight: FontWeight.w500) ??
      const TextStyle(fontSize: 12, fontWeight: FontWeight.w500);

  TextStyle get bodyMediumBold =>
      bodyMedium?.copyWith(fontWeight: FontWeight.bold) ??
      const TextStyle(fontSize: 14, fontWeight: FontWeight.bold);

  TextStyle get bodyMediumMedium =>
      bodyMedium?.copyWith(fontWeight: FontWeight.w500) ??
      const TextStyle(fontSize: 14, fontWeight: FontWeight.w500);

  TextStyle get bodyLargeBold =>
      bodyLarge?.copyWith(fontWeight: FontWeight.bold) ??
      const TextStyle(fontSize: 16, fontWeight: FontWeight.bold);

  TextStyle get bodyLargeMedium =>
      bodyLarge?.copyWith(fontWeight: FontWeight.w500) ??
      const TextStyle(fontSize: 16, fontWeight: FontWeight.w500);

  TextStyle get titleSmallBold =>
      titleSmall?.copyWith(fontWeight: FontWeight.bold) ??
      const TextStyle(fontSize: 14, fontWeight: FontWeight.bold);

  TextStyle get titleSmallMedium =>
      titleSmall?.copyWith(fontWeight: FontWeight.w500) ??
      const TextStyle(fontSize: 14, fontWeight: FontWeight.w500);

  TextStyle get titleMediumBold =>
      titleMedium?.copyWith(fontWeight: FontWeight.bold) ??
      const TextStyle(fontSize: 16, fontWeight: FontWeight.bold);

  TextStyle get titleMediumMedium =>
      titleMedium?.copyWith(fontWeight: FontWeight.w500) ??
      const TextStyle(fontSize: 16, fontWeight: FontWeight.w500);

  TextStyle get titleLargeBold =>
      titleLarge?.copyWith(fontWeight: FontWeight.bold) ??
      const TextStyle(fontSize: 20, fontWeight: FontWeight.bold);

  TextStyle get titleLargeMedium =>
      titleLarge?.copyWith(fontWeight: FontWeight.w500) ??
      const TextStyle(fontSize: 20, fontWeight: FontWeight.w500);

  TextStyle get headlineSmallBold =>
      headlineSmall?.copyWith(fontWeight: FontWeight.bold) ??
      const TextStyle(fontSize: 24, fontWeight: FontWeight.bold);

  TextStyle get headlineMediumBold =>
      headlineMedium?.copyWith(fontWeight: FontWeight.bold) ??
      const TextStyle(fontSize: 28, fontWeight: FontWeight.bold);

  TextStyle get headlineLargeBold =>
      headlineLarge?.copyWith(fontWeight: FontWeight.bold) ??
      const TextStyle(fontSize: 32, fontWeight: FontWeight.bold);

  TextStyle get headlineSmallMedium =>
      headlineSmall?.copyWith(fontWeight: FontWeight.w500) ??
      const TextStyle(fontSize: 24, fontWeight: FontWeight.w500);

  TextStyle get headlineMediumMedium =>
      headlineMedium?.copyWith(fontWeight: FontWeight.w500) ??
      const TextStyle(fontSize: 28, fontWeight: FontWeight.w500);

  TextStyle get headlineLargeMedium =>
      headlineLarge?.copyWith(fontWeight: FontWeight.w500) ??
      const TextStyle(fontSize: 32, fontWeight: FontWeight.w500);

  TextStyle get labelSmallMedium =>
      labelSmall?.copyWith(fontWeight: FontWeight.w500) ??
      const TextStyle(fontSize: 11, fontWeight: FontWeight.w500);

  TextStyle get labelMediumMedium =>
      labelMedium?.copyWith(fontWeight: FontWeight.w500) ??
      const TextStyle(fontSize: 12, fontWeight: FontWeight.w500);

  TextStyle get labelLargeMedium =>
      labelLarge?.copyWith(fontWeight: FontWeight.w500) ??
      const TextStyle(fontSize: 14, fontWeight: FontWeight.w500);

  TextStyle get caption =>
      bodySmall?.copyWith(fontSize: 11, color: Colors.grey[600]) ??
      TextStyle(fontSize: 11, color: Colors.grey[600]);
}
