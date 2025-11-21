import 'package:flutter/material.dart';

final elevatedButtonThemeData = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    shadowColor: Colors.transparent,
    minimumSize: const Size(double.infinity, 55),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
  ),
);

final outlinedButtonThemeData = OutlinedButtonThemeData(
  style: OutlinedButton.styleFrom(
    minimumSize: const Size(double.infinity, 55),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
  ),
);
