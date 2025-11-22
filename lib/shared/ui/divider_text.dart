import 'package:flutter/material.dart';
import 'package:future/shared/constants/colors.dart';
import 'package:future/shared/constants/spacing.dart';

class DividerWithText extends StatelessWidget {
  final String text;
  final Color? lineColor;
  final TextStyle? textStyle;
  final double thickness;

  const DividerWithText({
    super.key,
    required this.text,
    this.lineColor,
    this.textStyle,
    this.thickness = 1.0,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: lineColor ?? AppColors.gray100,
            thickness: thickness,
          ),
        ),
        Padding(
          padding: AppSpacing.p8,
          child: Text(
            text,
            style:
                textStyle ??
                Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
          ),
        ),
        Expanded(
          child: Divider(
            color: lineColor ?? AppColors.gray100,
            thickness: thickness,
          ),
        ),
      ],
    );
  }
}
