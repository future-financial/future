import 'package:flutter/material.dart';

extension AppTextStyles on TextTheme {
  TextStyle get bodySmallBold =>
      bodySmall!.copyWith(fontWeight: FontWeight.bold);

  TextStyle get bodyMediumBold =>
      bodyMedium!.copyWith(fontWeight: FontWeight.bold);

  TextStyle get bodyLargeBold =>
      bodyLarge!.copyWith(fontWeight: FontWeight.bold);

  TextStyle get titleSmallBold =>
      titleSmall!.copyWith(fontWeight: FontWeight.bold);

  TextStyle get titleMediumBold =>
      titleMedium!.copyWith(fontWeight: FontWeight.bold);

  TextStyle get titleLargeBold =>
      titleLarge!.copyWith(fontWeight: FontWeight.bold);

  TextStyle get headlineSmallBold =>
      headlineSmall!.copyWith(fontWeight: FontWeight.bold);

  TextStyle get headlineMediumBold =>
      headlineMedium!.copyWith(fontWeight: FontWeight.bold);

  TextStyle get headlineLargeBold =>
      headlineLarge!.copyWith(fontWeight: FontWeight.bold);
}
