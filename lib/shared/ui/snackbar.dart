import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:future/shared/constants/border.dart';
import 'package:future/shared/constants/colors.dart';
import 'package:future/shared/constants/spacing.dart';

class AppSnackBar extends SnackBar {
  AppSnackBar._base({
    super.key,
    required super.content,
    required Color super.backgroundColor,
    required Color super.closeIconColor,
    super.duration = const Duration(seconds: 3),
    Color? borderColor,
  }) : super(
         margin: AppSpacing.p16,
         elevation: 0,
         showCloseIcon: true,
         behavior: SnackBarBehavior.floating,
         shape: RoundedRectangleBorder(
           borderRadius: AppBorders.borderRadius16,
           side: BorderSide(color: borderColor ?? closeIconColor, width: 1.0),
         ),
       );

  factory AppSnackBar.success({
    Key? key,
    required String content,
    Duration duration = const Duration(seconds: 3),
  }) {
    return AppSnackBar._base(
      key: key,
      duration: duration,
      backgroundColor: AppColors.plum50.withValues(alpha: 0.5),
      closeIconColor: AppColors.plum500,
      content: _defaultRow(
        icon: CupertinoIcons.checkmark_circle,
        iconColor: AppColors.plum500,
        text: content,
        textColor: AppColors.plum700,
      ),
    );
  }

  factory AppSnackBar.info({
    Key? key,
    required String content,
    Duration duration = const Duration(seconds: 3),
  }) {
    return AppSnackBar._base(
      key: key,
      duration: duration,
      backgroundColor: AppColors.cyan50.withValues(alpha: 0.5),
      closeIconColor: AppColors.cyan500,
      content: _defaultRow(
        icon: CupertinoIcons.info_circle,
        iconColor: AppColors.cyan500,
        text: content,
        textColor: AppColors.cyan700,
      ),
    );
  }

  factory AppSnackBar.error({
    Key? key,
    required String content,
    Duration duration = const Duration(seconds: 3),
  }) {
    return AppSnackBar._base(
      key: key,
      duration: duration,
      backgroundColor: AppColors.red50.withValues(alpha: 0.5),
      closeIconColor: AppColors.red500,
      content: _defaultRow(
        icon: CupertinoIcons.xmark_circle,
        iconColor: AppColors.red500,
        text: content,
        textColor: AppColors.red700,
      ),
    );
  }

  factory AppSnackBar.warning({
    Key? key,
    required String content,
    Duration duration = const Duration(seconds: 3),
  }) {
    return AppSnackBar._base(
      key: key,
      duration: duration,
      backgroundColor: AppColors.amber50.withValues(alpha: 0.5),
      closeIconColor: AppColors.amber500,
      content: _defaultRow(
        icon: CupertinoIcons.exclamationmark_circle,
        iconColor: AppColors.amber500,
        text: content,
        textColor: AppColors.amber700,
      ),
    );
  }

  factory AppSnackBar.custom({
    Key? key,
    required String text,
    IconData? icon,
    Color? iconColor,
    Color? backgroundColor,
    Color? textColor,
    Color? borderColor,
    Color? closeIconColor,
    Duration duration = const Duration(seconds: 3),
  }) {
    return AppSnackBar._base(
      key: key,
      duration: duration,
      backgroundColor: backgroundColor ?? AppColors.gray800,
      closeIconColor: closeIconColor ?? AppColors.gray50,
      borderColor: borderColor,
      content: Row(
        children: [
          if (icon != null) Icon(icon, color: iconColor ?? AppColors.gray50),
          if (icon != null) AppSpacing.gapH16,
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                color: textColor ?? AppColors.gray50,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }

  static Widget _defaultRow({
    required IconData icon,
    required Color iconColor,
    required String text,
    required Color textColor,
  }) {
    return Row(
      children: [
        Icon(icon, color: iconColor),
        AppSpacing.gapH16,
        Expanded(
          child: Text(
            text,
            style: TextStyle(color: textColor, fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
