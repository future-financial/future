import 'package:flutter/widgets.dart';

class AppSpacing {
  static EdgeInsets p4 = const EdgeInsets.all(4);
  static EdgeInsets p6 = const EdgeInsets.all(6);
  static EdgeInsets p8 = const EdgeInsets.all(8);
  static EdgeInsets p12 = const EdgeInsets.all(12);
  static EdgeInsets p16 = const EdgeInsets.all(16);

  static EdgeInsets horizontal16 = const EdgeInsets.symmetric(horizontal: 16);

  static EdgeInsets vertical8 = const EdgeInsets.symmetric(vertical: 8);
  static EdgeInsets vertical16 = const EdgeInsets.symmetric(vertical: 16);

  static SizedBox gapH8 = const SizedBox(width: 8);
  static SizedBox gapH16 = const SizedBox(width: 16);
  static SizedBox gapH24 = const SizedBox(width: 24);
  static SizedBox gapH32 = const SizedBox(width: 32);

  static SizedBox gapV8 = const SizedBox(height: 8);
  static SizedBox gapV16 = const SizedBox(height: 16);
  static SizedBox gapV24 = const SizedBox(height: 24);
  static SizedBox gapV32 = const SizedBox(height: 32);

  static EdgeInsets symmetric({double horizontal = 0, double vertical = 0}) {
    return EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical);
  }
}
