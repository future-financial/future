import 'package:future/app/theme/button_theme.dart';
import 'package:future/app/theme/color_theme.dart';
import 'package:future/app/theme/input_theme.dart';
import 'package:future/app/theme/text_theme.dart';
import 'package:future/shared/constants/fonts.dart';
import 'package:flutter/material.dart';

final appThemeData = ThemeData(
  colorScheme: appColorTheme,
  textTheme: AppTextTheme.textTheme(),
  fontFamily: FontsConstants.defaultFontFamily,
  elevatedButtonTheme: elevatedButtonThemeData,
  outlinedButtonTheme: outlinedButtonThemeData,
  inputDecorationTheme: inputDecorationTheme,
  useMaterial3: true,
);
