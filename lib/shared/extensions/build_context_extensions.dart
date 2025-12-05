import 'package:flutter/material.dart';
import 'package:future/shared/ui/snackbar.dart';

extension BuildContextExtensions on BuildContext {
  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;

  void showSuccessSnackBar(String message) {
    ScaffoldMessenger.of(
      this,
    ).showSnackBar(AppSnackBar.success(content: message));
  }

  void showInfoSnackBar(String message) {
    ScaffoldMessenger.of(this).showSnackBar(AppSnackBar.info(content: message));
  }

  void showErrorSnackBar(String message) {
    ScaffoldMessenger.of(
      this,
    ).showSnackBar(AppSnackBar.error(content: message));
  }

  void showWarningSnackBar(String message) {
    ScaffoldMessenger.of(
      this,
    ).showSnackBar(AppSnackBar.warning(content: message));
  }

  void showCustomSnackBar({
    required String text,
    Color backgroundColor = Colors.black,
    Color textColor = Colors.white,
    IconData? icon,
    Color iconColor = Colors.white,
    Duration duration = const Duration(seconds: 3),
    Color? borderColor,
  }) {
    ScaffoldMessenger.of(this).showSnackBar(
      AppSnackBar.custom(
        text: text,
        backgroundColor: backgroundColor,
        textColor: textColor,
        icon: icon,
        iconColor: iconColor,
        duration: duration,
        borderColor: borderColor,
      ),
    );
  }

  void hideKeyboard() {
    FocusScope.of(this).unfocus();
  }

  void hideBottomSheet() {
    Navigator.of(this).pop();
  }
}
