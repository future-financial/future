import 'package:flutter/material.dart';

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
            color: lineColor ?? Colors.grey[300],
            thickness: thickness,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            text,
            style:
                textStyle ?? TextStyle(color: Colors.grey[600], fontSize: 14),
          ),
        ),
        Expanded(
          child: Divider(
            color: lineColor ?? Colors.grey[300],
            thickness: thickness,
          ),
        ),
      ],
    );
  }
}
