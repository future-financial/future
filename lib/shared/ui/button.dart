import 'package:flutter/material.dart';

enum ButtonVariant { primary, outlined, ghost, danger }

class Button extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  final ButtonVariant variant;

  const Button({
    super.key,
    required this.onPressed,
    required this.child,
    this.variant = ButtonVariant.primary,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final ButtonStyle style;
    switch (variant) {
      case ButtonVariant.primary:
        style = ElevatedButton.styleFrom(
          backgroundColor: theme.colorScheme.primary,
          foregroundColor: theme.colorScheme.onPrimary,
        );
        break;

      case ButtonVariant.outlined:
        style = OutlinedButton.styleFrom(
          side: BorderSide(color: theme.colorScheme.primary),
          foregroundColor: theme.colorScheme.primary,
        );
        break;

      case ButtonVariant.ghost:
        style = TextButton.styleFrom(
          foregroundColor: theme.colorScheme.primary,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        );
        break;

      case ButtonVariant.danger:
        style = ElevatedButton.styleFrom(
          backgroundColor: theme.colorScheme.error,
          foregroundColor: theme.colorScheme.onError,
        );
        break;
    }

    switch (variant) {
      case ButtonVariant.primary:
      case ButtonVariant.danger:
        return ElevatedButton(onPressed: onPressed, style: style, child: child);

      case ButtonVariant.outlined:
        return OutlinedButton(onPressed: onPressed, style: style, child: child);

      case ButtonVariant.ghost:
        return TextButton(onPressed: onPressed, style: style, child: child);
    }
  }
}
