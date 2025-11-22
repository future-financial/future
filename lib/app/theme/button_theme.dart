import 'package:flutter/material.dart';
import 'package:future/shared/constants/border.dart';

final elevatedButtonThemeData = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    shadowColor: Colors.transparent,
    minimumSize: const Size(double.infinity, 55),
    shape: RoundedRectangleBorder(borderRadius: AppBorders.borderRadiusFull),
  ),
);

final outlinedButtonThemeData = OutlinedButtonThemeData(
  style: OutlinedButton.styleFrom(
    minimumSize: const Size(double.infinity, 55),
    shape: RoundedRectangleBorder(borderRadius: AppBorders.borderRadiusFull),
  ),
);
