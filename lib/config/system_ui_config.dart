import 'package:flutter/services.dart';
import 'package:future/shared/constants/colors.dart';

class SystemUiConfig {
  static void setDefault() {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: AppColors.white,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: AppColors.white,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
    );
  }
}
